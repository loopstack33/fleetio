// To parse this JSON data, do
//
//     final vehiclesModel = vehiclesModelFromJson(jsonString);

// ignore_for_file: constant_identifier_names

import 'dart:convert';

List<VehiclesModel> vehiclesModelFromJson(String str) =>
    List<VehiclesModel>.from(
        json.decode(str).map((x) => VehiclesModel.fromJson(x)));

String vehiclesModelToJson(List<VehiclesModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class VehiclesModel {
  VehiclesModel({
    required this.id,
    required this.accountId,
    required this.archivedAt,
    required this.fuelTypeId,
    required this.fuelTypeName,
    required this.fuelVolumeUnits,
    required this.groupId,
    required this.groupName,
    required this.meterUnit,
    required this.name,
    required this.ownership,
    required this.secondaryMeter,
    required this.secondaryMeterUnit,
    required this.systemOfMeasurement,
    required this.vehicleStatusId,
    required this.vehicleStatusName,
    required this.vehicleStatusColor,
    required this.vehicleTypeId,
    required this.vehicleTypeName,
    required this.fuelEntriesCount,
    required this.serviceEntriesCount,
    required this.serviceRemindersCount,
    required this.vehicleRenewalRemindersCount,
    required this.commentsCount,
    required this.documentsCount,
    required this.imagesCount,
    required this.currentLocationEntryId,
    required this.isSample,
    required this.inServiceDate,
    required this.inServiceMeter,
    required this.estimatedServiceMonths,
    required this.estimatedReplacementMileage,
    required this.estimatedResalePrice,
    required this.outOfServiceDate,
    required this.outOfServiceMeter,
    required this.meterName,
    required this.secondaryMeterName,
    required this.primaryMeterUsagePerDay,
    required this.secondaryMeterUsagePerDay,
    required this.createdAt,
    required this.updatedAt,
    required this.currentMeterValue,
    required this.currentMeterDate,
    required this.secondaryMeterValue,
    required this.secondaryMeterDate,
    required this.groupAncestry,
    required this.color,
    required this.licensePlate,
    required this.make,
    required this.model,
    required this.registrationExpirationMonth,
    required this.registrationState,
    required this.trim,
    required this.vin,
    required this.year,
    required this.loanAccountNumber,
    required this.loanEndedAt,
    required this.loanInterestRate,
    required this.loanNotes,
    required this.loanStartedAt,
    required this.loanVendorId,
    required this.loanVendorName,
    required this.loanAmount,
    required this.loanPayment,
    required this.residualValue,
    required this.customFields,
    required this.inspectionSchedulesCount,
    required this.issuesCount,
    required this.workOrdersCount,
    required this.typeName,
    required this.defaultImageUrl,
    required this.defaultImageUrlMedium,
    required this.defaultImageUrlSmall,
    required this.defaultImageUrlLarge,
    required this.driver,
    required this.specs,
    required this.externalIds,
    required this.aiEnabled,
    required this.assetableType,
    required this.currentLocationEntry,
  });

  int id;
  int accountId;
  dynamic archivedAt;
  int? fuelTypeId;
  FuelTypeName? fuelTypeName;
  FuelVolumeUnits? fuelVolumeUnits;
  dynamic groupId;
  dynamic groupName;
  MeterUnit? meterUnit;
  String name;
  Ownership? ownership;
  bool secondaryMeter;
  dynamic secondaryMeterUnit;
  SystemOfMeasurement? systemOfMeasurement;
  int vehicleStatusId;
  String? vehicleStatusName;
  VehicleStatusColor? vehicleStatusColor;
  int vehicleTypeId;
  String? vehicleTypeName;
  int fuelEntriesCount;
  int serviceEntriesCount;
  int serviceRemindersCount;
  int vehicleRenewalRemindersCount;
  int commentsCount;
  int documentsCount;
  int imagesCount;
  int? currentLocationEntryId;
  bool isSample;
  dynamic inServiceDate;
  dynamic inServiceMeter;
  dynamic estimatedServiceMonths;
  dynamic estimatedReplacementMileage;
  EstimatedResalePrice? estimatedResalePrice;
  dynamic outOfServiceDate;
  dynamic outOfServiceMeter;
  MeterName? meterName;
  SecondaryMeterName? secondaryMeterName;
  String primaryMeterUsagePerDay;
  String secondaryMeterUsagePerDay;
  DateTime createdAt;
  DateTime updatedAt;
  double currentMeterValue;
  DateTime? currentMeterDate;
  double secondaryMeterValue;
  dynamic secondaryMeterDate;
  dynamic groupAncestry;
  Color? color;
  String? licensePlate;
  String? make;
  String? model;
  int registrationExpirationMonth;
  Regi? registrationState;
  String? trim;
  String vin;
  int? year;
  String? loanAccountNumber;
  dynamic loanEndedAt;
  dynamic loanInterestRate;
  String? loanNotes;
  dynamic loanStartedAt;
  int? loanVendorId;
  String? loanVendorName;
  dynamic loanAmount;
  dynamic loanPayment;
  dynamic residualValue;
  CustomFields customFields;
  int inspectionSchedulesCount;
  int issuesCount;
  int workOrdersCount;
  String? typeName;
  String? defaultImageUrl;
  String? defaultImageUrlMedium;
  String? defaultImageUrlSmall;
  String? defaultImageUrlLarge;
  CustomFields driver;
  Specs specs;
  ExternalIds externalIds;
  bool aiEnabled;
  Type? assetableType;
  CurrentLocationEntry currentLocationEntry;

  factory VehiclesModel.fromJson(Map<String, dynamic> json) => VehiclesModel(
        id: json["id"],
        accountId: json["account_id"],
        archivedAt: json["archived_at"],
        fuelTypeId: json["fuel_type_id"],
        fuelTypeName: json["fuel_type_name"] == null
            ? null
            : fuelTypeNameValues.map[json["fuel_type_name"]]!,
        fuelVolumeUnits: json["fuel_volume_units"] == null
            ? null
            : fuelVolumeUnitsValues.map[json["fuel_volume_units"]]!,
        groupId: json["group_id"],
        groupName: json["group_name"],
        meterUnit: json["meter_unit"] == null
            ? null
            : meterUnitValues.map[json["meter_unit"]]!,
        name: json["name"],
        ownership: json["ownership"] == null
            ? null
            : ownershipValues.map[json["ownership"]]!,
        secondaryMeter: json["secondary_meter"],
        secondaryMeterUnit: json["secondary_meter_unit"],
        systemOfMeasurement: json["system_of_measurement"] == null
            ? null
            : systemOfMeasurementValues.map[json["system_of_measurement"]]!,
        vehicleStatusId: json["vehicle_status_id"],
        vehicleStatusName: json["vehicle_status_name"] == null
            ? null
            :json["vehicle_status_name"]!,
        vehicleStatusColor: json["vehicle_status_color"] == null
            ? null
            : vehicleStatusColorValues.map[json["vehicle_status_color"]]!,
        vehicleTypeId: json["vehicle_type_id"],
        vehicleTypeName: json["vehicle_type_name"] == null
            ? null
            : json["vehicle_type_name"]!,
        fuelEntriesCount: json["fuel_entries_count"],
        serviceEntriesCount: json["service_entries_count"],
        serviceRemindersCount: json["service_reminders_count"],
        vehicleRenewalRemindersCount: json["vehicle_renewal_reminders_count"],
        commentsCount: json["comments_count"],
        documentsCount: json["documents_count"],
        imagesCount: json["images_count"],
        currentLocationEntryId: json["current_location_entry_id"],
        isSample: json["is_sample"],
        inServiceDate: json["in_service_date"],
        inServiceMeter: json["in_service_meter"],
        estimatedServiceMonths: json["estimated_service_months"],
        estimatedReplacementMileage: json["estimated_replacement_mileage"],
        estimatedResalePrice: json["estimated_resale_price"] == null
            ? null
            : EstimatedResalePrice.fromJson(json["estimated_resale_price"]),
        outOfServiceDate: json["out_of_service_date"],
        outOfServiceMeter: json["out_of_service_meter"],
        meterName: json["meter_name"] == null
            ? null
            : meterNameValues.map[json["meter_name"]]!,
        secondaryMeterName: json["secondary_meter_name"] == null
            ? null
            : secondaryMeterNameValues.map[json["secondary_meter_name"]]!,
        primaryMeterUsagePerDay: json["primary_meter_usage_per_day"],
        secondaryMeterUsagePerDay: json["secondary_meter_usage_per_day"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        currentMeterValue: json["current_meter_value"]?.toDouble(),
        currentMeterDate: json["current_meter_date"] == null
            ? null
            : DateTime.parse(json["current_meter_date"]),
        secondaryMeterValue: json["secondary_meter_value"],
        secondaryMeterDate: json["secondary_meter_date"],
        groupAncestry: json["group_ancestry"],
        color: json["color"] == null ? null : colorValues.map[json["color"]]!,
        licensePlate: json["license_plate"],
        make: json["make"] == null ? null : json["make"]!,
        model: json["model"] == null ? null : json["model"]!,
        registrationExpirationMonth: json["registration_expiration_month"],
        registrationState: json["registration_state"] == null
            ? null
            : regiValues.map[json["registration_state"]]!,
        trim: json["trim"],
        vin: json["vin"],
        year: json["year"],
        loanAccountNumber: json["loan_account_number"],
        loanEndedAt: json["loan_ended_at"],
        loanInterestRate: json["loan_interest_rate"],
        loanNotes: json["loan_notes"],
        loanStartedAt: json["loan_started_at"],
        loanVendorId: json["loan_vendor_id"],
        loanVendorName: json["loan_vendor_name"],
        loanAmount: json["loan_amount"],
        loanPayment: json["loan_payment"],
        residualValue: json["residual_value"],
        customFields: CustomFields.fromJson(json["custom_fields"]),
        inspectionSchedulesCount: json["inspection_schedules_count"],
        issuesCount: json["issues_count"],
        workOrdersCount: json["work_orders_count"],
        typeName: json["type_name"] == null
            ? null
            : json["type_name"]!,
        defaultImageUrl: json["default_image_url"],
        defaultImageUrlMedium: json["default_image_url_medium"],
        defaultImageUrlSmall: json["default_image_url_small"],
        defaultImageUrlLarge: json["default_image_url_large"],
        driver: CustomFields.fromJson(json["driver"]),
        specs: Specs.fromJson(json["specs"]),
        externalIds: ExternalIds.fromJson(json["external_ids"]),
        aiEnabled: json["ai_enabled"],
        assetableType: json["assetable_type"] == null
            ? null
            : typeValues.map[json["assetable_type"]]!,
        currentLocationEntry:
            CurrentLocationEntry.fromJson(json["current_location_entry"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "account_id": accountId,
        "archived_at": archivedAt,
        "fuel_type_id": fuelTypeId,
        "fuel_type_name": fuelTypeNameValues.reverse[fuelTypeName],
        "fuel_volume_units": fuelVolumeUnitsValues.reverse[fuelVolumeUnits],
        "group_id": groupId,
        "group_name": groupName,
        "meter_unit": meterUnitValues.reverse[meterUnit],
        "name": name,
        "ownership": ownershipValues.reverse[ownership],
        "secondary_meter": secondaryMeter,
        "secondary_meter_unit": secondaryMeterUnit,
        "system_of_measurement":
            systemOfMeasurementValues.reverse[systemOfMeasurement],
        "vehicle_status_id": vehicleStatusId,
        "vehicle_status_name":
        vehicleStatusName,
        "vehicle_status_color":
            vehicleStatusColorValues.reverse[vehicleStatusColor],
        "vehicle_type_id": vehicleTypeId,
        "vehicle_type_name": vehicleTypeName,
        "fuel_entries_count": fuelEntriesCount,
        "service_entries_count": serviceEntriesCount,
        "service_reminders_count": serviceRemindersCount,
        "vehicle_renewal_reminders_count": vehicleRenewalRemindersCount,
        "comments_count": commentsCount,
        "documents_count": documentsCount,
        "images_count": imagesCount,
        "current_location_entry_id": currentLocationEntryId,
        "is_sample": isSample,
        "in_service_date": inServiceDate,
        "in_service_meter": inServiceMeter,
        "estimated_service_months": estimatedServiceMonths,
        "estimated_replacement_mileage": estimatedReplacementMileage,
        "estimated_resale_price": estimatedResalePrice?.toJson(),
        "out_of_service_date": outOfServiceDate,
        "out_of_service_meter": outOfServiceMeter,
        "meter_name": meterNameValues.reverse[meterName],
        "secondary_meter_name":
            secondaryMeterNameValues.reverse[secondaryMeterName],
        "primary_meter_usage_per_day": primaryMeterUsagePerDay,
        "secondary_meter_usage_per_day": secondaryMeterUsagePerDay,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "current_meter_value": currentMeterValue,
        "current_meter_date":
            "${currentMeterDate!.year.toString().padLeft(4, '0')}-${currentMeterDate!.month.toString().padLeft(2, '0')}-${currentMeterDate!.day.toString().padLeft(2, '0')}",
        "secondary_meter_value": secondaryMeterValue,
        "secondary_meter_date": secondaryMeterDate,
        "group_ancestry": groupAncestry,
        "color": colorValues.reverse[color],
        "license_plate": licensePlate,
        "make": make,
        "model": model,
        "registration_expiration_month": registrationExpirationMonth,
        "registration_state": regiValues.reverse[registrationState],
        "trim": trim,
        "vin": vin,
        "year": year,
        "loan_account_number": loanAccountNumber,
        "loan_ended_at": loanEndedAt,
        "loan_interest_rate": loanInterestRate,
        "loan_notes": loanNotes,
        "loan_started_at": loanStartedAt,
        "loan_vendor_id": loanVendorId,
        "loan_vendor_name": loanVendorName,
        "loan_amount": loanAmount,
        "loan_payment": loanPayment,
        "residual_value": residualValue,
        "custom_fields": customFields.toJson(),
        "inspection_schedules_count": inspectionSchedulesCount,
        "issues_count": issuesCount,
        "work_orders_count": workOrdersCount,
        "type_name": typeName,
        "default_image_url": defaultImageUrl,
        "default_image_url_medium": defaultImageUrlMedium,
        "default_image_url_small": defaultImageUrlSmall,
        "default_image_url_large": defaultImageUrlLarge,
        "driver": driver.toJson(),
        "specs": specs.toJson(),
        "external_ids": externalIds.toJson(),
        "ai_enabled": aiEnabled,
        "assetable_type": typeValues.reverse[assetableType],
        "current_location_entry": currentLocationEntry.toJson(),
      };
}

enum Type { VEHICLE }

final typeValues = EnumValues({"Vehicle": Type.VEHICLE});

enum Color { BLUE, COLOR_BLUE }

final colorValues = EnumValues({"BLUE": Color.BLUE, "Blue": Color.COLOR_BLUE});

class CurrentLocationEntry {
  CurrentLocationEntry({
    this.id,
    this.locatableType,
    this.locatableId,
    this.date,
    this.createdAt,
    this.updatedAt,
    this.contactId,
    this.address,
    this.isCurrent,
    this.itemType,
    this.itemId,
    this.vehicleId,
    this.location,
    this.addressComponents,
    this.geolocation,
  });

  int? id;
  LocatableType? locatableType;
  int? locatableId;
  DateTime? date;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic contactId;
  String? address;
  bool? isCurrent;
  Type? itemType;
  int? itemId;
  int? vehicleId;
  String? location;
  AddressComponents? addressComponents;
  Geolocation? geolocation;

  factory CurrentLocationEntry.fromJson(Map<String, dynamic> json) =>
      CurrentLocationEntry(
        id: json["id"],
        locatableType: json["locatable_type"] == null
            ? null
            : locatableTypeValues.map[json["locatable_type"]]!,
        locatableId: json["locatable_id"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        contactId: json["contact_id"],
        address: json["address"],
        isCurrent: json["is_current"],
        itemType: json["item_type"] == null
            ? null
            : typeValues.map[json["item_type"]]!,
        itemId: json["item_id"],
        vehicleId: json["vehicle_id"],
        location: json["location"],
        addressComponents: json["address_components"] == null
            ? null
            : AddressComponents.fromJson(json["address_components"]),
        geolocation: json["geolocation"] == null
            ? null
            : Geolocation.fromJson(json["geolocation"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "locatable_type": locatableTypeValues.reverse[locatableType],
        "locatable_id": locatableId,
        "date": date?.toIso8601String(),
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "contact_id": contactId,
        "address": address,
        "is_current": isCurrent,
        "item_type": typeValues.reverse[itemType],
        "item_id": itemId,
        "vehicle_id": vehicleId,
        "location": location,
        "address_components": addressComponents?.toJson(),
        "geolocation": geolocation?.toJson(),
      };
}

class AddressComponents {
  AddressComponents({
    this.streetNumber,
    this.street,
    required this.city,
    required this.region,
    required this.regionShort,
    required this.country,
    required this.countryShort,
    this.postalCode,
  });

  String? streetNumber;
  Street? street;
  City? city;
  Region? region;
  Regi? regionShort;
  Country? country;
  CountryShort? countryShort;
  String? postalCode;

  factory AddressComponents.fromJson(Map<String, dynamic> json) =>
      AddressComponents(
        streetNumber: json["street_number"],
        street:
            json["street"] == null ? null : streetValues.map[json["street"]]!,
        city: json["city"] == null ? null : cityValues.map[json["city"]]!,
        region:
            json["region"] == null ? null : regionValues.map[json["region"]]!,
        regionShort: json["region_short"] == null
            ? null
            : regiValues.map[json["region_short"]]!,
        country: json["country"] == null
            ? null
            : countryValues.map[json["country"]]!,
        countryShort: json["country_short"] == null
            ? null
            : countryShortValues.map[json["country_short"]]!,
        postalCode: json["postal_code"],
      );

  Map<String, dynamic> toJson() => {
        "street_number": streetNumber,
        "street": streetValues.reverse[street],
        "city": cityValues.reverse[city],
        "region": regionValues.reverse[region],
        "region_short": regiValues.reverse[regionShort],
        "country": countryValues.reverse[country],
        "country_short": countryShortValues.reverse[countryShort],
        "postal_code": postalCode,
      };
}

enum City { MC_KINNEY }

final cityValues = EnumValues({"McKinney": City.MC_KINNEY});

enum Country { UNITED_STATES }

final countryValues = EnumValues({"United States": Country.UNITED_STATES});

enum CountryShort { US }

final countryShortValues = EnumValues({"US": CountryShort.US});

enum Region { TEXAS }

final regionValues = EnumValues({"Texas": Region.TEXAS});

enum Regi { TX, FL, OK }

final regiValues = EnumValues({"FL": Regi.FL, "OK": Regi.OK, "TX": Regi.TX});

enum Street {
  INDUSTRIAL_BOULEVARD,
  COUCH_DRIVE,
  WEST_UNIVERSITY_DRIVE,
  SOUTH_AIRPORT_ROAD,
  FARM_TO_MARKET_ROAD_546
}

final streetValues = EnumValues({
  "Couch Drive": Street.COUCH_DRIVE,
  "Farm to Market Road 546": Street.FARM_TO_MARKET_ROAD_546,
  "Industrial Boulevard": Street.INDUSTRIAL_BOULEVARD,
  "South Airport Road": Street.SOUTH_AIRPORT_ROAD,
  "West University Drive": Street.WEST_UNIVERSITY_DRIVE
});

class Geolocation {
  Geolocation({
    required this.latitude,
    required this.longitude,
  });

  double latitude;
  double longitude;

  factory Geolocation.fromJson(Map<String, dynamic> json) => Geolocation(
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "latitude": latitude,
        "longitude": longitude,
      };
}

enum LocatableType { SUBMITTED_INSPECTION_FORM }

final locatableTypeValues = EnumValues(
    {"SubmittedInspectionForm": LocatableType.SUBMITTED_INSPECTION_FORM});

class CustomFields {
  CustomFields();

  factory CustomFields.fromJson(Map<String, dynamic> json) => CustomFields();

  Map<String, dynamic> toJson() => {};
}

class EstimatedResalePrice {
  EstimatedResalePrice({
    required this.cents,
    required this.currencyIso,
  });

  int cents;
  CurrencyIso? currencyIso;

  factory EstimatedResalePrice.fromJson(Map<String, dynamic> json) =>
      EstimatedResalePrice(
        cents: json["cents"],
        currencyIso: json["currency_iso"] == null
            ? null
            : currencyIsoValues.map[json["currency_iso"]]!,
      );

  Map<String, dynamic> toJson() => {
        "cents": cents,
        "currency_iso": currencyIsoValues.reverse[currencyIso],
      };
}

enum CurrencyIso { USD }

final currencyIsoValues = EnumValues({"USD": CurrencyIso.USD});

class ExternalIds {
  ExternalIds({
    this.tolltags,
    this.unitNumber,
  });

  String? tolltags;
  String? unitNumber;

  factory ExternalIds.fromJson(Map<String, dynamic> json) => ExternalIds(
        tolltags: json["tolltags"],
        unitNumber: json["unit_number"],
      );

  Map<String, dynamic> toJson() => {
        "tolltags": tolltags,
        "unit_number": unitNumber,
      };
}

enum FuelTypeName { GASOLINE, UNLEADED, FLEX_FUEL, DIESEL }

final fuelTypeNameValues = EnumValues({
  "Diesel": FuelTypeName.DIESEL,
  "Flex Fuel": FuelTypeName.FLEX_FUEL,
  "Gasoline": FuelTypeName.GASOLINE,
  "Unleaded": FuelTypeName.UNLEADED
});

enum FuelVolumeUnits { US_GALLONS }

final fuelVolumeUnitsValues =
    EnumValues({"us_gallons": FuelVolumeUnits.US_GALLONS});



enum MeterName { ODOMETER }

final meterNameValues = EnumValues({"Odometer": MeterName.ODOMETER});

enum MeterUnit { MI }

final meterUnitValues = EnumValues({"mi": MeterUnit.MI});


enum Ownership { LEASED, OWNED }

final ownershipValues =
    EnumValues({"Leased": Ownership.LEASED, "Owned": Ownership.OWNED});

enum SecondaryMeterName { SECONDARY_METER }

final secondaryMeterNameValues =
    EnumValues({"Secondary Meter": SecondaryMeterName.SECONDARY_METER});

class Specs {
  Specs({
    required this.id,
    required this.vehicleId,
    required this.accountId,
    this.bodyType,
    this.bodySubtype,
    this.driveType,
    this.brakeSystem,
    required this.msrpCents,
    this.fuelTankCapacity,
    this.fuelTank2Capacity,
    this.frontTrackWidth,
    this.groundClearance,
    this.height,
    this.length,
    this.rearTrackWidth,
    this.width,
    this.wheelbase,
    this.frontTirePsi,
    this.rearTirePsi,
    this.baseTowingCapacity,
    this.curbWeight,
    this.grossVehicleWeightRating,
    this.bedLength,
    this.maxPayload,
    required this.rearAxleType,
    required this.frontTireType,
    required this.frontWheelDiameter,
    required this.rearTireType,
    required this.rearWheelDiameter,
    this.epaCity,
    this.epaHighway,
    this.epaCombined,
    required this.engineDescription,
    required this.engineBrand,
    this.engineAspiration,
    this.engineBlockType,
    this.engineBore,
    this.engineCamType,
    this.engineCompression,
    this.engineCylinders,
    this.engineDisplacement,
    this.fuelInduction,
    required this.fuelQuality,
    this.maxHp,
    this.maxTorque,
    this.oilCapacity,
    required this.redlineRpm,
    this.engineStroke,
    this.engineValves,
    required this.transmissionDescription,
    required this.transmissionBrand,
    this.transmissionType,
    this.transmissionGears,
    this.cargoVolume,
    this.interiorVolume,
    required this.passengerVolume,
    required this.createdAt,
    required this.updatedAt,
    this.dutyType,
    this.weightClass,
    this.engineBoreWithUnits,
    this.wheelbaseWithUnits,
    required this.msrp,
  });

  int id;
  int vehicleId;
  int accountId;
  BodyType? bodyType;
  BodySubtype? bodySubtype;
  DriveType? driveType;
  BrakeSystem? brakeSystem;
  int msrpCents;
  double? fuelTankCapacity;
  dynamic fuelTank2Capacity;
  double? frontTrackWidth;
  double? groundClearance;
  double? height;
  double? length;
  double? rearTrackWidth;
  double? width;
  double? wheelbase;
  dynamic frontTirePsi;
  dynamic rearTirePsi;
  dynamic baseTowingCapacity;
  double? curbWeight;
  double? grossVehicleWeightRating;
  dynamic bedLength;
  double? maxPayload;
  String rearAxleType;
  TireType? frontTireType;
  WheelDiameter? frontWheelDiameter;
  TireType? rearTireType;
  WheelDiameter? rearWheelDiameter;
  dynamic epaCity;
  dynamic epaHighway;
  dynamic epaCombined;
  EngineDescription? engineDescription;
  EngineBrand engineBrand;
  EngineAspiration? engineAspiration;
  EngineBlockType? engineBlockType;
  double? engineBore;
  EngineCamType? engineCamType;
  double? engineCompression;
  int? engineCylinders;
  double? engineDisplacement;
  FuelInduction? fuelInduction;
  String fuelQuality;
  int? maxHp;
  int? maxTorque;
  double? oilCapacity;
  String redlineRpm;
  double? engineStroke;
  int? engineValves;
  TransmissionDescription? transmissionDescription;
  String transmissionBrand;
  TransmissionType? transmissionType;
  int? transmissionGears;
  double? cargoVolume;
  dynamic interiorVolume;
  String passengerVolume;
  DateTime createdAt;
  DateTime updatedAt;
  String? dutyType;
  dynamic weightClass;
  EngineBoreWithUnits? engineBoreWithUnits;
  WheelbaseWithUnits? wheelbaseWithUnits;
  double msrp;

  factory Specs.fromJson(Map<String, dynamic> json) => Specs(
        id: json["id"],
        vehicleId: json["vehicle_id"],
        accountId: json["account_id"],
        bodyType: json["body_type"] == null
            ? null
            : bodyTypeValues.map[json["body_type"]]!,
        bodySubtype: json["body_subtype"] == null
            ? null
            : bodySubtypeValues.map[json["body_subtype"]]!,
        driveType: json["drive_type"] == null
            ? null
            : driveTypeValues.map[json["drive_type"]]!,
        brakeSystem: json["brake_system"] == null
            ? null
            : brakeSystemValues.map[json["brake_system"]]!,
        msrpCents: json["msrp_cents"],
        fuelTankCapacity: json["fuel_tank_capacity"],
        fuelTank2Capacity: json["fuel_tank_2_capacity"],
        frontTrackWidth: json["front_track_width"]?.toDouble(),
        groundClearance: json["ground_clearance"]?.toDouble(),
        height: json["height"]?.toDouble(),
        length: json["length"]?.toDouble(),
        rearTrackWidth: json["rear_track_width"]?.toDouble(),
        width: json["width"]?.toDouble(),
        wheelbase: json["wheelbase"]?.toDouble(),
        frontTirePsi: json["front_tire_psi"],
        rearTirePsi: json["rear_tire_psi"],
        baseTowingCapacity: json["base_towing_capacity"],
        curbWeight: json["curb_weight"],
        grossVehicleWeightRating: json["gross_vehicle_weight_rating"],
        bedLength: json["bed_length"],
        maxPayload: json["max_payload"],
        rearAxleType: json["rear_axle_type"],
        frontTireType: json["front_tire_type"] == null
            ? null
            : tireTypeValues.map[json["front_tire_type"]]!,
        frontWheelDiameter: json["front_wheel_diameter"] == null
            ? null
            : wheelDiameterValues.map[json["front_wheel_diameter"]]!,
        rearTireType: json["rear_tire_type"] == null
            ? null
            : tireTypeValues.map[json["rear_tire_type"]]!,
        rearWheelDiameter: json["rear_wheel_diameter"] == null
            ? null
            : wheelDiameterValues.map[json["rear_wheel_diameter"]]!,
        epaCity: json["epa_city"],
        epaHighway: json["epa_highway"],
        epaCombined: json["epa_combined"],
        engineDescription: json["engine_description"] == null
            ? null
            : engineDescriptionValues.map[json["engine_description"]]!,
        engineBrand: engineBrandValues.map[json["engine_brand"]]!,
        engineAspiration: json["engine_aspiration"] == null
            ? null
            : engineAspirationValues.map[json["engine_aspiration"]]!,
        engineBlockType: json["engine_block_type"] == null
            ? null
            : engineBlockTypeValues.map[json["engine_block_type"]]!,
        engineBore: json["engine_bore"]?.toDouble(),
        engineCamType: json["engine_cam_type"] == null
            ? null
            : engineCamTypeValues.map[json["engine_cam_type"]]!,
        engineCompression: json["engine_compression"]?.toDouble(),
        engineCylinders: json["engine_cylinders"],
        engineDisplacement: json["engine_displacement"]?.toDouble(),
        fuelInduction: json["fuel_induction"] == null
            ? null
            : fuelInductionValues.map[json["fuel_induction"]]!,
        fuelQuality: json["fuel_quality"],
        maxHp: json["max_hp"],
        maxTorque: json["max_torque"],
        oilCapacity: json["oil_capacity"]?.toDouble(),
        redlineRpm: json["redline_rpm"],
        engineStroke: json["engine_stroke"]?.toDouble(),
        engineValves: json["engine_valves"],
        transmissionDescription: json["transmission_description"] == null
            ? null
            : transmissionDescriptionValues
                .map[json["transmission_description"]]!,
        transmissionBrand: json["transmission_brand"],
        transmissionType: json["transmission_type"] == null
            ? null
            : transmissionTypeValues.map[json["transmission_type"]]!,
        transmissionGears: json["transmission_gears"],
        cargoVolume: json["cargo_volume"]?.toDouble(),
        interiorVolume: json["interior_volume"],
        passengerVolume: json["passenger_volume"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        dutyType: json["duty_type"],
        weightClass: json["weight_class"],
        engineBoreWithUnits: json["engine_bore_with_units"] == null
            ? null
            : engineBoreWithUnitsValues.map[json["engine_bore_with_units"]]!,
        wheelbaseWithUnits: json["wheelbase_with_units"] == null
            ? null
            : wheelbaseWithUnitsValues.map[json["wheelbase_with_units"]]!,
        msrp: json["msrp"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "vehicle_id": vehicleId,
        "account_id": accountId,
        "body_type": bodyTypeValues.reverse[bodyType],
        "body_subtype": bodySubtypeValues.reverse[bodySubtype],
        "drive_type": driveTypeValues.reverse[driveType],
        "brake_system": brakeSystemValues.reverse[brakeSystem],
        "msrp_cents": msrpCents,
        "fuel_tank_capacity": fuelTankCapacity,
        "fuel_tank_2_capacity": fuelTank2Capacity,
        "front_track_width": frontTrackWidth,
        "ground_clearance": groundClearance,
        "height": height,
        "length": length,
        "rear_track_width": rearTrackWidth,
        "width": width,
        "wheelbase": wheelbase,
        "front_tire_psi": frontTirePsi,
        "rear_tire_psi": rearTirePsi,
        "base_towing_capacity": baseTowingCapacity,
        "curb_weight": curbWeight,
        "gross_vehicle_weight_rating": grossVehicleWeightRating,
        "bed_length": bedLength,
        "max_payload": maxPayload,
        "rear_axle_type": rearAxleType,
        "front_tire_type": tireTypeValues.reverse[frontTireType],
        "front_wheel_diameter": wheelDiameterValues.reverse[frontWheelDiameter],
        "rear_tire_type": tireTypeValues.reverse[rearTireType],
        "rear_wheel_diameter": wheelDiameterValues.reverse[rearWheelDiameter],
        "epa_city": epaCity,
        "epa_highway": epaHighway,
        "epa_combined": epaCombined,
        "engine_description":
            engineDescriptionValues.reverse[engineDescription],
        "engine_brand": engineBrandValues.reverse[engineBrand],
        "engine_aspiration": engineAspirationValues.reverse[engineAspiration],
        "engine_block_type": engineBlockTypeValues.reverse[engineBlockType],
        "engine_bore": engineBore,
        "engine_cam_type": engineCamTypeValues.reverse[engineCamType],
        "engine_compression": engineCompression,
        "engine_cylinders": engineCylinders,
        "engine_displacement": engineDisplacement,
        "fuel_induction": fuelInductionValues.reverse[fuelInduction],
        "fuel_quality": fuelQuality,
        "max_hp": maxHp,
        "max_torque": maxTorque,
        "oil_capacity": oilCapacity,
        "redline_rpm": redlineRpm,
        "engine_stroke": engineStroke,
        "engine_valves": engineValves,
        "transmission_description":
            transmissionDescriptionValues.reverse[transmissionDescription],
        "transmission_brand": transmissionBrand,
        "transmission_type": transmissionTypeValues.reverse[transmissionType],
        "transmission_gears": transmissionGears,
        "cargo_volume": cargoVolume,
        "interior_volume": interiorVolume,
        "passenger_volume": passengerVolume,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "duty_type": dutyType,
        "weight_class": weightClass,
        "engine_bore_with_units":
            engineBoreWithUnitsValues.reverse[engineBoreWithUnits],
        "wheelbase_with_units":
            wheelbaseWithUnitsValues.reverse[wheelbaseWithUnits],
        "msrp": msrp,
      };
}

enum BodySubtype { EMPTY, EXTENDED_LENGTH_CARGO, REGULAR_CAB }

final bodySubtypeValues = EnumValues({
  "": BodySubtype.EMPTY,
  "Extended Length Cargo": BodySubtype.EXTENDED_LENGTH_CARGO,
  "Regular Cab": BodySubtype.REGULAR_CAB
});

enum BodyType { CHASSIS, FULL_SIZE, CAB_OVER_ENGINE }

final bodyTypeValues = EnumValues({
  "Cab Over Engine": BodyType.CAB_OVER_ENGINE,
  "Chassis": BodyType.CHASSIS,
  "Full-Size": BodyType.FULL_SIZE
});

enum BrakeSystem { HYDRAULIC }

final brakeSystemValues = EnumValues({"Hydraulic": BrakeSystem.HYDRAULIC});

enum DriveType { THE_4_X2, RWD, FWD }

final driveTypeValues = EnumValues(
    {"FWD": DriveType.FWD, "RWD": DriveType.RWD, "4X2": DriveType.THE_4_X2});

enum EngineAspiration { NATURALLY_ASPIRATED, TURBOCHARGER }

final engineAspirationValues = EnumValues({
  "Naturally Aspirated": EngineAspiration.NATURALLY_ASPIRATED,
  "Turbocharger": EngineAspiration.TURBOCHARGER
});

enum EngineBlockType { V, I }

final engineBlockTypeValues =
    EnumValues({"I": EngineBlockType.I, "V": EngineBlockType.V});

enum EngineBoreWithUnits { THE_38_IN, THE_36_IN }

final engineBoreWithUnitsValues = EnumValues({
  "3.6 in": EngineBoreWithUnits.THE_36_IN,
  "3.8 in": EngineBoreWithUnits.THE_38_IN
});

enum EngineBrand { FORD_TRITON, GM_VORTEC, EMPTY, PENTASTAR, ISUZU }

final engineBrandValues = EnumValues({
  "": EngineBrand.EMPTY,
  "Ford Triton": EngineBrand.FORD_TRITON,
  "GM Vortec": EngineBrand.GM_VORTEC,
  "Isuzu": EngineBrand.ISUZU,
  "Pentastar": EngineBrand.PENTASTAR
});

enum EngineCamType { SOHC, OHV, DOHC }

final engineCamTypeValues = EnumValues({
  "DOHC": EngineCamType.DOHC,
  "OHV": EngineCamType.OHV,
  "SOHC": EngineCamType.SOHC
});

enum EngineDescription {
  FORD_TRITON_68_L_V10_362_HP_457_FT_LBS,
  GM_VORTEC_600060_L_V8_332_HP_380_FT_LBS,
  EMPTY,
  THE_37_L_V6_275_HP_260_FT_LBS,
  PENTASTAR_36_L_V6_280_HP_260_FT_LBS,
  THE_35_L_FLEX_FUEL_V6_275_HP_262_FT_LBS,
  ISUZU_4_HK1_TC_52_L_I4_215_HP_452_FT_LBS,
  GM_VORTEC_600060_L_V8_297_HP_372_FT_LBS
}

final engineDescriptionValues = EnumValues({
  "": EngineDescription.EMPTY,
  "Ford Triton 6.8L V10 362hp 457ft. lbs.":
      EngineDescription.FORD_TRITON_68_L_V10_362_HP_457_FT_LBS,
  "GM Vortec 6000 6.0L V8 297hp 372ft. lbs.":
      EngineDescription.GM_VORTEC_600060_L_V8_297_HP_372_FT_LBS,
  "GM Vortec 6000 6.0L V8 332hp 380ft. lbs.":
      EngineDescription.GM_VORTEC_600060_L_V8_332_HP_380_FT_LBS,
  "Isuzu 4HK1-TC 5.2L I4 215hp 452ft. lbs.":
      EngineDescription.ISUZU_4_HK1_TC_52_L_I4_215_HP_452_FT_LBS,
  "Pentastar 3.6L V6 280hp 260ft. lbs.":
      EngineDescription.PENTASTAR_36_L_V6_280_HP_260_FT_LBS,
  "3.5L Flex Fuel V6 275hp 262ft. lbs.":
      EngineDescription.THE_35_L_FLEX_FUEL_V6_275_HP_262_FT_LBS,
  "3.7L V6 275hp 260ft. lbs.": EngineDescription.THE_37_L_V6_275_HP_260_FT_LBS
});

enum TireType { EMPTY, THE_23565_R16_C, LT225_75_R16_E, THE_23565_R16_C_R }

final tireTypeValues = EnumValues({
  "": TireType.EMPTY,
  "LT225/75R16E": TireType.LT225_75_R16_E,
  "235/65R16C": TireType.THE_23565_R16_C,
  "235/65R16C R": TireType.THE_23565_R16_C_R
});

enum WheelDiameter { EMPTY, THE_160_X_70, THE_160_X_60, THE_160_X_65 }

final wheelDiameterValues = EnumValues({
  "": WheelDiameter.EMPTY,
  "16.0 x 6.0": WheelDiameter.THE_160_X_60,
  "16.0 x 6.5": WheelDiameter.THE_160_X_65,
  "16.0 x 7.0": WheelDiameter.THE_160_X_70
});

enum FuelInduction { SEQUENTIAL_MULTIPORT_FUEL_INJECTION, DIRECT_INJECTION }

final fuelInductionValues = EnumValues({
  "Direct Injection": FuelInduction.DIRECT_INJECTION,
  "Sequential Multiport Fuel Injection":
      FuelInduction.SEQUENTIAL_MULTIPORT_FUEL_INJECTION
});

enum TransmissionDescription {
  EMPTY,
  THE_6_SPEED_SHIFTABLE_AUTOMATIC,
  THE_6_SPEED_AUTOMATIC,
  THE_9_SPEED_SHIFTABLE_AUTOMATIC,
  THE_10_SPEED_SHIFTABLE_AUTOMATIC
}

final transmissionDescriptionValues = EnumValues({
  "": TransmissionDescription.EMPTY,
  "10-Speed Shiftable Automatic":
      TransmissionDescription.THE_10_SPEED_SHIFTABLE_AUTOMATIC,
  "6-Speed Automatic": TransmissionDescription.THE_6_SPEED_AUTOMATIC,
  "6-Speed Shiftable Automatic":
      TransmissionDescription.THE_6_SPEED_SHIFTABLE_AUTOMATIC,
  "9-Speed Shiftable Automatic":
      TransmissionDescription.THE_9_SPEED_SHIFTABLE_AUTOMATIC
});

enum TransmissionType { EMPTY, AUTOMATIC }

final transmissionTypeValues = EnumValues(
    {"Automatic": TransmissionType.AUTOMATIC, "": TransmissionType.EMPTY});

enum WheelbaseWithUnits { THE_1782_IN, THE_1476_IN, THE_159_IN }

final wheelbaseWithUnitsValues = EnumValues({
  "147.6 in": WheelbaseWithUnits.THE_1476_IN,
  "159 in": WheelbaseWithUnits.THE_159_IN,
  "178.2 in": WheelbaseWithUnits.THE_1782_IN
});

enum SystemOfMeasurement { IMPERIAL }

final systemOfMeasurementValues =
    EnumValues({"imperial": SystemOfMeasurement.IMPERIAL});

enum VehicleStatusColor { GREEN, RED, ORANGE, YELLOW }

final vehicleStatusColorValues = EnumValues({
  "green": VehicleStatusColor.GREEN,
  "orange": VehicleStatusColor.ORANGE,
  "red": VehicleStatusColor.RED,
  "yellow": VehicleStatusColor.YELLOW
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
