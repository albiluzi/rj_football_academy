import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:myteam/api/api_config.dart';
import 'package:myteam/model/post.dart';

import 'package:myteam/model/staff.dart';
import 'package:myteam/model/status.dart';


class apiRest{
  static String getHomeItems(){
    return configUrl("home/all/");
  }
  static String getClubItems(){
    return configUrl("team/all/");
  }
  static String getPlayersByTeam(int id){
    return configUrl("players/by/team/"+id.toString()+"/");
  }
  static String getArticlesByTeam(int id){
    return configUrl("articles/by/team/"+id.toString()+"/");
  }
  static String getTrophiesByTeam(int id){
    return configUrl("trophies/by/team/"+id.toString()+"/");
  }

  static String getStaffsByTeam(int id){
    return configUrl("staffs/by/team/"+id.toString()+"/");
  }

  static String configUrl(String url){
    return apiConfig.api_url + url +apiConfig.api_token+"/"+apiConfig.item_purchase_code +"/";
  }

  static registerUser() {
    return configUrl("user/register/");
  }

  static submitAnswer() {
    return configUrl("question/vote/");
  }

  static getCommentsBy(Post post, Status status) {
    String id = (post == null)? status.id.toString() : post.id.toString();
    String type = (post == null)? "status" : "post";
    return configUrl("comments/by/"+type+"/"+id+"/");
  }

  static submitComment(Post post, Status status) {
    String type = (post == null)? "status" : "post";
    return configUrl("comment/"+type+"/add/");
  }

  static submitQuote() {
    return configUrl("quote/upload/");
  }
  static submitImage() {
    return configUrl("image/upload/");
  }

  static String submitVideo() {
    return configUrl("video/upload/");
  }
  static String statusByPage(int page){
    return configUrl("status/all/"+page.toString()+"/created/");
  }

  static toggleLike(String state) {
    return configUrl("status/"+state+"/like/");

  }
  static getPostById(String id) {
    return configUrl("post/by/id/"+id+"/");
  }
  static competitionsTables() {
    return configUrl("competition/tables/");
  }
  static tableByCompetition(String id) {
    return configUrl("tables/by/competition/"+id+"/");
  }

  static addPostShare() {
    return configUrl("post/add/share/");
  }

  static addPostView() {
    return configUrl("post/add/view/");
  }

  static addStatusShare() {
    return configUrl("status/add/share/");
  }

  static addStatusView() {
    return configUrl("status/add/view/");
  }
  static addStatusDownload() {
    return configUrl("status/add/download/");
  }

  static competitionsList() {
    return configUrl("competition/all/");

  }
  static getAppConfig() {
    return configUrl("app/config/");

  }
  static matchesByCompetition(int id,int page) {
    return configUrl("match/by/competition/"+id.toString()+"/"+page.toString()+"/");
  }
  static matchesByClubs(int home,int away) {
    return configUrl("match/by/clubs/"+home.toString()+"/"+away.toString()+"/");
  }

  static matchStatistics(int id) {
    return configUrl("match/statistics/by/"+id.toString()+"/");
  }

  static matchEvents(int id) {
    return configUrl("match/events/by/"+id.toString()+"/");

  }

  static postByPage(int page) {
    return configUrl("post/all/"+page.toString()+"/");
  }

  static String editProfile() {
    return configUrl("user/edit/");
  }

  static getStatusById(String id) {
    return configUrl("status/by/id/"+id+"/");
  }

  static getMatchById(String id) {
    return configUrl("match/by/id/"+id+"/");

  }

  static String sendMessage() {
    return configUrl("support/add/");
  }
}