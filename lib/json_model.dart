// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Welcome {
  final Time? time;
  final String? disclaimer;
  final String? chartName;
  final Bpi? bpi;
  Welcome({
    this.time,
    this.disclaimer,
    this.chartName,
    this.bpi,
  });

  Welcome copyWith({
    Time? time,
    String? disclaimer,
    String? chartName,
    Bpi? bpi,
  }) {
    return Welcome(
      time: time ?? this.time,
      disclaimer: disclaimer ?? this.disclaimer,
      chartName: chartName ?? this.chartName,
      bpi: bpi ?? this.bpi,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'time': time?.toMap(),
      'disclaimer': disclaimer,
      'chartName': chartName,
      'bpi': bpi?.toMap(),
    };
  }

  factory Welcome.fromMap(Map<String, dynamic> map) {
    return Welcome(
      time: map['time'] != null
          ? Time.fromMap(map['time'] as Map<String, dynamic>)
          : null,
      disclaimer:
          map['disclaimer'] != null ? map['disclaimer'] as String : null,
      chartName: map['chartName'] != null ? map['chartName'] as String : null,
      bpi: map['bpi'] != null
          ? Bpi.fromMap(map['bpi'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Welcome.fromJson(String source) =>
      Welcome.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Welcome(time: $time, disclaimer: $disclaimer, chartName: $chartName, bpi: $bpi)';
  }

  @override
  bool operator ==(covariant Welcome other) {
    if (identical(this, other)) return true;

    return other.time == time &&
        other.disclaimer == disclaimer &&
        other.chartName == chartName &&
        other.bpi == bpi;
  }

  @override
  int get hashCode {
    return time.hashCode ^
        disclaimer.hashCode ^
        chartName.hashCode ^
        bpi.hashCode;
  }
}

class Bpi {
  final Eur? usd;
  final Eur? gbp;
  final Eur? eur;
  Bpi({
    this.usd,
    this.gbp,
    this.eur,
  });

  Bpi copyWith({
    Eur? usd,
    Eur? gbp,
    Eur? eur,
  }) {
    return Bpi(
      usd: usd ?? this.usd,
      gbp: gbp ?? this.gbp,
      eur: eur ?? this.eur,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'usd': usd?.toMap(),
      'gbp': gbp?.toMap(),
      'eur': eur?.toMap(),
    };
  }

  factory Bpi.fromMap(Map<String, dynamic> map) {
    return Bpi(
      usd: map['usd'] != null
          ? Eur.fromMap(map['usd'] as Map<String, dynamic>)
          : null,
      gbp: map['gbp'] != null
          ? Eur.fromMap(map['gbp'] as Map<String, dynamic>)
          : null,
      eur: map['eur'] != null
          ? Eur.fromMap(map['eur'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Bpi.fromJson(String source) =>
      Bpi.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Bpi(usd: $usd, gbp: $gbp, eur: $eur)';

  @override
  bool operator ==(covariant Bpi other) {
    if (identical(this, other)) return true;

    return other.usd == usd && other.gbp == gbp && other.eur == eur;
  }

  @override
  int get hashCode => usd.hashCode ^ gbp.hashCode ^ eur.hashCode;
}

class Eur {
  final String? code;
  final String? symbol;
  final String? rate;
  final String? description;
  final double? rateFloat;
  Eur({
    this.code,
    this.symbol,
    this.rate,
    this.description,
    this.rateFloat,
  });

  Eur copyWith({
    String? code,
    String? symbol,
    String? rate,
    String? description,
    double? rateFloat,
  }) {
    return Eur(
      code: code ?? this.code,
      symbol: symbol ?? this.symbol,
      rate: rate ?? this.rate,
      description: description ?? this.description,
      rateFloat: rateFloat ?? this.rateFloat,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'symbol': symbol,
      'rate': rate,
      'description': description,
      'rateFloat': rateFloat,
    };
  }

  factory Eur.fromMap(Map<String, dynamic> map) {
    return Eur(
      code: map['code'] != null ? map['code'] as String : null,
      symbol: map['symbol'] != null ? map['symbol'] as String : null,
      rate: map['rate'] != null ? map['rate'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      rateFloat: map['rateFloat'] != null ? map['rateFloat'] as double : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Eur.fromJson(String source) =>
      Eur.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Eur(code: $code, symbol: $symbol, rate: $rate, description: $description, rateFloat: $rateFloat)';
  }

  @override
  bool operator ==(covariant Eur other) {
    if (identical(this, other)) return true;

    return other.code == code &&
        other.symbol == symbol &&
        other.rate == rate &&
        other.description == description &&
        other.rateFloat == rateFloat;
  }

  @override
  int get hashCode {
    return code.hashCode ^
        symbol.hashCode ^
        rate.hashCode ^
        description.hashCode ^
        rateFloat.hashCode;
  }
}

class Time {
  final String? updated;
  final DateTime? updatedIso;
  final String? updateduk;
  Time({
    this.updated,
    this.updatedIso,
    this.updateduk,
  });

  Time copyWith({
    String? updated,
    DateTime? updatedIso,
    String? updateduk,
  }) {
    return Time(
      updated: updated ?? this.updated,
      updatedIso: updatedIso ?? this.updatedIso,
      updateduk: updateduk ?? this.updateduk,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'updated': updated,
      'updatedIso': updatedIso?.millisecondsSinceEpoch,
      'updateduk': updateduk,
    };
  }

  factory Time.fromMap(Map<String, dynamic> map) {
    return Time(
      updated: map['updated'] != null ? map['updated'] as String : null,
      updatedIso: map['updatedIso'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['updatedIso'] as int)
          : null,
      updateduk: map['updateduk'] != null ? map['updateduk'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Time.fromJson(String source) =>
      Time.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Time(updated: $updated, updatedIso: $updatedIso, updateduk: $updateduk)';

  @override
  bool operator ==(covariant Time other) {
    if (identical(this, other)) return true;

    return other.updated == updated &&
        other.updatedIso == updatedIso &&
        other.updateduk == updateduk;
  }

  @override
  int get hashCode =>
      updated.hashCode ^ updatedIso.hashCode ^ updateduk.hashCode;
}
