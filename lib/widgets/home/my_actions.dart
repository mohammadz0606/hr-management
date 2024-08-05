import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/my_actions_cubit.dart';
import '../../helper/colors.dart';
import '../card.dart';

class MyActions extends StatelessWidget {
  const MyActions({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
      ),
      children: List.generate(
        BlocProvider.of<MyActionsCubit>(context).myActionsList.length,
        (index) {
          final data =
              BlocProvider.of<MyActionsCubit>(context).myActionsList[index];
          return CustomCard(
            child: InkWell(
              onTap: () {
                switch (data.id) {
                  case 1:
                    break;
                  case 2:
                    break;
                  case 3:
                    break;
                  case 4:
                    break;
                }
              },
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: data.bgColor,
                      radius: 30,
                      child: Center(
                        child: Icon(
                          data.iconData,
                          color: data.iconColor,
                          size: 30,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      data.title,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.visible,
                      maxLines: null,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.darkGray,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
