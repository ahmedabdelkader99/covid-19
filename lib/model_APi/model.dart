import 'package:flutter/material.dart';

class model {
  List<CountriesStat> countriesStat;
  String statisticTakenAt;
  WorldTotal worldTotal;

  model({this.countriesStat, this.statisticTakenAt, this.worldTotal});

  model.fromJson(Map<String, dynamic> json) {
    if (json['countries_stat'] != null) {
      countriesStat = new List<CountriesStat>();
      json['countries_stat'].forEach((v) {
        countriesStat.add(new CountriesStat.fromJson(v));
      });
    }
    statisticTakenAt = json['statistic_taken_at'];
    worldTotal = json['world_total'] != null
        ? new WorldTotal.fromJson(json['world_total'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.countriesStat != null) {
      data['countries_stat'] =
          this.countriesStat.map((v) => v.toJson()).toList();
    }
    data['statistic_taken_at'] = this.statisticTakenAt;
    if (this.worldTotal != null) {
      data['world_total'] = this.worldTotal.toJson();
    }
    return data;
  }
}

class CountriesStat {
  String countryName;
  String cases;
  String deaths;
  String region;
  String totalRecovered;
  String newDeaths;
  String newCases;
  String seriousCritical;
  String activeCases;
  String totalCasesPer1mPopulation;

  CountriesStat(
      {this.countryName,
        this.cases,
        this.deaths,
        this.region,
        this.totalRecovered,
        this.newDeaths,
        this.newCases,
        this.seriousCritical,
        this.activeCases,
        this.totalCasesPer1mPopulation});

  CountriesStat.fromJson(Map<String, dynamic> json) {
    countryName = json['country_name'];
    cases = json['cases'];
    deaths = json['deaths'];
    region = json['region'];
    totalRecovered = json['total_recovered'];
    newDeaths = json['new_deaths'];
    newCases = json['new_cases'];
    seriousCritical = json['serious_critical'];
    activeCases = json['active_cases'];
    totalCasesPer1mPopulation = json['total_cases_per_1m_population'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country_name'] = this.countryName;
    data['cases'] = this.cases;
    data['deaths'] = this.deaths;
    data['region'] = this.region;
    data['total_recovered'] = this.totalRecovered;
    data['new_deaths'] = this.newDeaths;
    data['new_cases'] = this.newCases;
    data['serious_critical'] = this.seriousCritical;
    data['active_cases'] = this.activeCases;
    data['total_cases_per_1m_population'] = this.totalCasesPer1mPopulation;
    return data;
  }
}

class WorldTotal {
  String totalCases;
  String totalDeaths;
  String totalRecovered;
  String newCases;
  String newDeaths;
  String statisticTakenAt;

  WorldTotal(
      {this.totalCases,
        this.totalDeaths,
        this.totalRecovered,
        this.newCases,
        this.newDeaths,
        this.statisticTakenAt});

  WorldTotal.fromJson(Map<String, dynamic> json) {
    totalCases = json['total_cases'];
    totalDeaths = json['total_deaths'];
    totalRecovered = json['total_recovered'];
    newCases = json['new_cases'];
    newDeaths = json['new_deaths'];
    statisticTakenAt = json['statistic_taken_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_cases'] = this.totalCases;
    data['total_deaths'] = this.totalDeaths;
    data['total_recovered'] = this.totalRecovered;
    data['new_cases'] = this.newCases;
    data['new_deaths'] = this.newDeaths;
    data['statistic_taken_at'] = this.statisticTakenAt;
    return data;
  }
}
