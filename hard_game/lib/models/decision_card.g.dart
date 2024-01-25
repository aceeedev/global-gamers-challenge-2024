// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decision_card.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDecisionCardCollection on Isar {
  IsarCollection<DecisionCard> get decisionCards => this.collection();
}

const DecisionCardSchema = CollectionSchema(
  name: r'DecisionCard',
  id: -590441570326692139,
  properties: {
    r'description': PropertySchema(
      id: 0,
      name: r'description',
      type: IsarType.string,
    ),
    r'economicValue': PropertySchema(
      id: 1,
      name: r'economicValue',
      type: IsarType.long,
    ),
    r'environmentalValue': PropertySchema(
      id: 2,
      name: r'environmentalValue',
      type: IsarType.long,
    ),
    r'governmentAndCommunityValue': PropertySchema(
      id: 3,
      name: r'governmentAndCommunityValue',
      type: IsarType.long,
    ),
    r'noSubIds': PropertySchema(
      id: 4,
      name: r'noSubIds',
      type: IsarType.longList,
    ),
    r'peaceAndJusticeValue': PropertySchema(
      id: 5,
      name: r'peaceAndJusticeValue',
      type: IsarType.long,
    ),
    r'socialValue': PropertySchema(
      id: 6,
      name: r'socialValue',
      type: IsarType.long,
    ),
    r'yesSubIds': PropertySchema(
      id: 7,
      name: r'yesSubIds',
      type: IsarType.longList,
    )
  },
  estimateSize: _decisionCardEstimateSize,
  serialize: _decisionCardSerialize,
  deserialize: _decisionCardDeserialize,
  deserializeProp: _decisionCardDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _decisionCardGetId,
  getLinks: _decisionCardGetLinks,
  attach: _decisionCardAttach,
  version: '3.1.0+1',
);

int _decisionCardEstimateSize(
  DecisionCard object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.noSubIds;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.yesSubIds;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  return bytesCount;
}

void _decisionCardSerialize(
  DecisionCard object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.description);
  writer.writeLong(offsets[1], object.economicValue);
  writer.writeLong(offsets[2], object.environmentalValue);
  writer.writeLong(offsets[3], object.governmentAndCommunityValue);
  writer.writeLongList(offsets[4], object.noSubIds);
  writer.writeLong(offsets[5], object.peaceAndJusticeValue);
  writer.writeLong(offsets[6], object.socialValue);
  writer.writeLongList(offsets[7], object.yesSubIds);
}

DecisionCard _decisionCardDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DecisionCard(
    description: reader.readStringOrNull(offsets[0]),
    economicValue: reader.readLongOrNull(offsets[1]),
    environmentalValue: reader.readLongOrNull(offsets[2]),
    governmentAndCommunityValue: reader.readLongOrNull(offsets[3]),
    id: id,
    noSubIds: reader.readLongList(offsets[4]),
    peaceAndJusticeValue: reader.readLongOrNull(offsets[5]),
    socialValue: reader.readLongOrNull(offsets[6]),
    yesSubIds: reader.readLongList(offsets[7]),
  );
  return object;
}

P _decisionCardDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongList(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readLongList(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _decisionCardGetId(DecisionCard object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _decisionCardGetLinks(DecisionCard object) {
  return [];
}

void _decisionCardAttach(
    IsarCollection<dynamic> col, Id id, DecisionCard object) {
  object.id = id;
}

extension DecisionCardQueryWhereSort
    on QueryBuilder<DecisionCard, DecisionCard, QWhere> {
  QueryBuilder<DecisionCard, DecisionCard, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DecisionCardQueryWhere
    on QueryBuilder<DecisionCard, DecisionCard, QWhereClause> {
  QueryBuilder<DecisionCard, DecisionCard, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DecisionCardQueryFilter
    on QueryBuilder<DecisionCard, DecisionCard, QFilterCondition> {
  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      economicValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'economicValue',
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      economicValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'economicValue',
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      economicValueEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'economicValue',
        value: value,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      economicValueGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'economicValue',
        value: value,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      economicValueLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'economicValue',
        value: value,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      economicValueBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'economicValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      environmentalValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'environmentalValue',
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      environmentalValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'environmentalValue',
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      environmentalValueEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'environmentalValue',
        value: value,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      environmentalValueGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'environmentalValue',
        value: value,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      environmentalValueLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'environmentalValue',
        value: value,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      environmentalValueBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'environmentalValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      governmentAndCommunityValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'governmentAndCommunityValue',
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      governmentAndCommunityValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'governmentAndCommunityValue',
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      governmentAndCommunityValueEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'governmentAndCommunityValue',
        value: value,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      governmentAndCommunityValueGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'governmentAndCommunityValue',
        value: value,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      governmentAndCommunityValueLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'governmentAndCommunityValue',
        value: value,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      governmentAndCommunityValueBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'governmentAndCommunityValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      noSubIdsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'noSubIds',
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      noSubIdsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'noSubIds',
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      noSubIdsElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noSubIds',
        value: value,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      noSubIdsElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'noSubIds',
        value: value,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      noSubIdsElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'noSubIds',
        value: value,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      noSubIdsElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'noSubIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      noSubIdsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'noSubIds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      noSubIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'noSubIds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      noSubIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'noSubIds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      noSubIdsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'noSubIds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      noSubIdsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'noSubIds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      noSubIdsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'noSubIds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      peaceAndJusticeValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'peaceAndJusticeValue',
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      peaceAndJusticeValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'peaceAndJusticeValue',
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      peaceAndJusticeValueEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'peaceAndJusticeValue',
        value: value,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      peaceAndJusticeValueGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'peaceAndJusticeValue',
        value: value,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      peaceAndJusticeValueLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'peaceAndJusticeValue',
        value: value,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      peaceAndJusticeValueBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'peaceAndJusticeValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      socialValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'socialValue',
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      socialValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'socialValue',
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      socialValueEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'socialValue',
        value: value,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      socialValueGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'socialValue',
        value: value,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      socialValueLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'socialValue',
        value: value,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      socialValueBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'socialValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      yesSubIdsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'yesSubIds',
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      yesSubIdsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'yesSubIds',
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      yesSubIdsElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'yesSubIds',
        value: value,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      yesSubIdsElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'yesSubIds',
        value: value,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      yesSubIdsElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'yesSubIds',
        value: value,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      yesSubIdsElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'yesSubIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      yesSubIdsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'yesSubIds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      yesSubIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'yesSubIds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      yesSubIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'yesSubIds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      yesSubIdsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'yesSubIds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      yesSubIdsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'yesSubIds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterFilterCondition>
      yesSubIdsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'yesSubIds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension DecisionCardQueryObject
    on QueryBuilder<DecisionCard, DecisionCard, QFilterCondition> {}

extension DecisionCardQueryLinks
    on QueryBuilder<DecisionCard, DecisionCard, QFilterCondition> {}

extension DecisionCardQuerySortBy
    on QueryBuilder<DecisionCard, DecisionCard, QSortBy> {
  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy> sortByEconomicValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'economicValue', Sort.asc);
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy>
      sortByEconomicValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'economicValue', Sort.desc);
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy>
      sortByEnvironmentalValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'environmentalValue', Sort.asc);
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy>
      sortByEnvironmentalValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'environmentalValue', Sort.desc);
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy>
      sortByGovernmentAndCommunityValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'governmentAndCommunityValue', Sort.asc);
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy>
      sortByGovernmentAndCommunityValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'governmentAndCommunityValue', Sort.desc);
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy>
      sortByPeaceAndJusticeValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'peaceAndJusticeValue', Sort.asc);
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy>
      sortByPeaceAndJusticeValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'peaceAndJusticeValue', Sort.desc);
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy> sortBySocialValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'socialValue', Sort.asc);
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy>
      sortBySocialValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'socialValue', Sort.desc);
    });
  }
}

extension DecisionCardQuerySortThenBy
    on QueryBuilder<DecisionCard, DecisionCard, QSortThenBy> {
  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy> thenByEconomicValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'economicValue', Sort.asc);
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy>
      thenByEconomicValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'economicValue', Sort.desc);
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy>
      thenByEnvironmentalValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'environmentalValue', Sort.asc);
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy>
      thenByEnvironmentalValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'environmentalValue', Sort.desc);
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy>
      thenByGovernmentAndCommunityValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'governmentAndCommunityValue', Sort.asc);
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy>
      thenByGovernmentAndCommunityValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'governmentAndCommunityValue', Sort.desc);
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy>
      thenByPeaceAndJusticeValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'peaceAndJusticeValue', Sort.asc);
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy>
      thenByPeaceAndJusticeValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'peaceAndJusticeValue', Sort.desc);
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy> thenBySocialValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'socialValue', Sort.asc);
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QAfterSortBy>
      thenBySocialValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'socialValue', Sort.desc);
    });
  }
}

extension DecisionCardQueryWhereDistinct
    on QueryBuilder<DecisionCard, DecisionCard, QDistinct> {
  QueryBuilder<DecisionCard, DecisionCard, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QDistinct>
      distinctByEconomicValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'economicValue');
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QDistinct>
      distinctByEnvironmentalValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'environmentalValue');
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QDistinct>
      distinctByGovernmentAndCommunityValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'governmentAndCommunityValue');
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QDistinct> distinctByNoSubIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'noSubIds');
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QDistinct>
      distinctByPeaceAndJusticeValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'peaceAndJusticeValue');
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QDistinct> distinctBySocialValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'socialValue');
    });
  }

  QueryBuilder<DecisionCard, DecisionCard, QDistinct> distinctByYesSubIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'yesSubIds');
    });
  }
}

extension DecisionCardQueryProperty
    on QueryBuilder<DecisionCard, DecisionCard, QQueryProperty> {
  QueryBuilder<DecisionCard, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DecisionCard, String?, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<DecisionCard, int?, QQueryOperations> economicValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'economicValue');
    });
  }

  QueryBuilder<DecisionCard, int?, QQueryOperations>
      environmentalValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'environmentalValue');
    });
  }

  QueryBuilder<DecisionCard, int?, QQueryOperations>
      governmentAndCommunityValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'governmentAndCommunityValue');
    });
  }

  QueryBuilder<DecisionCard, List<int>?, QQueryOperations> noSubIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'noSubIds');
    });
  }

  QueryBuilder<DecisionCard, int?, QQueryOperations>
      peaceAndJusticeValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'peaceAndJusticeValue');
    });
  }

  QueryBuilder<DecisionCard, int?, QQueryOperations> socialValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'socialValue');
    });
  }

  QueryBuilder<DecisionCard, List<int>?, QQueryOperations> yesSubIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'yesSubIds');
    });
  }
}
