import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:state_management/presentation/widgets/logo_widget.dart';

class MovieAppBar extends StatelessWidget {
  const MovieAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).viewPadding.top + 4.h,
          left: 16.w,
          right: 16.w),
          child: Row(children: [
            IconButton(onPressed: (){

            }, icon: SvgPicture.asset('assets/svgs/menu.svg',height: 12.h,),),
            Expanded(child: LogoWidget(height: 14.h,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,size: 12.h,))
          
          ],),
      
    );
  }
}
