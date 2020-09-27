/*
* Author : LiJiqqi
* Date : 2020/9/27
*/


class PublicVM{

  String getVideoDuration(int ms){
    int seconds = (ms/1000).floor();
    int minute = (seconds/60).floor();
    int hour = (minute/60).floor();

    if(hour > 0){
      return '$hour:${minute%60}:${seconds%60}';
    }else if(minute > 0){
      return '$minute:${seconds%60}';
    }else if(seconds > 0){
      return '00:$seconds';
    }else{
      return '';
    }

  }

  String getPlayTimes(int playTime){
    return '${(playTime/10000).toStringAsFixed(2)}万';
  }

  String getPraisedCount(int count){
    return count>10000 ? '${(count/10000).toStringAsFixed(1)}万'
            : '$count';
  }

  String getCommentCount(int count){
    return count>1000?'${(count/1000).toStringAsFixed(1)}千'
        :'$count';
  }

}