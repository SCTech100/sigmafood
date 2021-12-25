import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodtest/app/pages/meal/view/meal_view.dart';
import 'package:foodtest/app/pages/searchmeal/cubit/searchmeal_cubit.dart';
import 'package:foodtest/app/pages/searchmeal/cubit/searchmeal_state.dart';
import 'package:foodtest/app/widgets/meal_loadinggrid_widget.dart';
import 'package:foodtest/app/widgets/nodata_widget.dart';

class SearchMealView extends StatefulWidget {
  const SearchMealView({Key? key}) : super(key: key);

  @override
  _SearchMealViewState createState() => _SearchMealViewState();
}

class _SearchMealViewState extends State<SearchMealView> {
  final searchController = TextEditingController();
  final searchFocus = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    searchFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchmealCubit>(
      create: (context) => SearchmealCubit(),
      child: BlocConsumer<SearchmealCubit, SearchmealState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SearchmealCubit cubit = context.read<SearchmealCubit>();

          return SafeArea(
              child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  child: TextFormField(
                                      onFieldSubmitted: (String? val) {
                                        FocusScope.of(context).unfocus();
                                        cubit.fetchData(searchController.text);
                                      },
                                      controller: searchController,
                                      focusNode: searchFocus,
                                      autofocus: true,
                                      style: TextStyle(color: Colors.black),
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.fromLTRB(
                                              10, 10, 0, 10),
                                          hintText: 'Search',
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none)),
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                FocusScope.of(context).unfocus();
                                cubit.fetchData(searchController.text);
                              },
                              icon: Icon(Icons.search))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: state.isInitial
                    ? NoDataWidget(
                        visible: state.isInitial,
                        text: 'Search Your Meal',
                      )
                    : state.isLoading
                        ? MealLoadingGridWidget()
                        : Stack(
                            children: [
                              RefreshIndicator(
                                onRefresh: () async {
                                  cubit.fetchData(searchController.text);
                                  return;
                                },
                                child: Scrollbar(
                                  child: GridView.builder(
                                    itemCount: state.listMeal.length,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2),
                                    itemBuilder: (context, index) {
                                      String name =
                                          state.listMeal[index].strMeal ?? '';
                                      String strMealThumb =
                                          state.listMeal[index].strMealThumb ??
                                              '';
                                      String idMeal =
                                          state.listMeal[index].idMeal ?? '';
                                      return GestureDetector(
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return MealView(
                                              item: state.listMeal[index],
                                            );
                                          }));
                                        },
                                        child: Hero(
                                          tag: idMeal,
                                          child: Container(
                                            padding: EdgeInsets.all(10),
                                            height: 200,
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4),
                                                      child: Image.network(
                                                        strMealThumb,
                                                        errorBuilder: (context,
                                                            error, stackTrace) {
                                                          return Icon(
                                                              Icons.error);
                                                        },
                                                        loadingBuilder:
                                                            (BuildContext
                                                                    context,
                                                                Widget child,
                                                                ImageChunkEvent?
                                                                    loadingProgress) {
                                                          if (loadingProgress ==
                                                              null)
                                                            return child;
                                                          return Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              value: loadingProgress
                                                                          .expectedTotalBytes !=
                                                                      null
                                                                  ? loadingProgress
                                                                          .cumulativeBytesLoaded /
                                                                      loadingProgress
                                                                          .expectedTotalBytes!
                                                                  : null,
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                    height: 20,
                                                    child: Text(
                                                      name,
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              NoDataWidget(
                                visible: state.listMeal.isEmpty,
                                imageWidget: Image.asset(
                                  'assets/images/nodatafound.png',
                                  width: 200,
                                ),
                                text: 'Meal not found',
                              )
                            ],
                          ),
              )
            ],
          ));
        },
      ),
    );
  }
}
