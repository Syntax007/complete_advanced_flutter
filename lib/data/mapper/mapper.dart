
// to convert the response into a non nullable object (model)

import 'package:complete_advanced_flutter/data/responses/response.dart';
import 'package:complete_advanced_flutter/domain/model.dart';
import 'package:complete_advanced_flutter/app/extensions.dart';

const EMPTY = "";
const ZERO = 0;

// toDomain converts the data layer to the domain layer..
extension CustomerResponseMapper on CustomerResponse? {
  Customer toDomain(){
    return Customer(
        this?.id?.orEmpty() ?? EMPTY,
        this?.name.orEmpty() ?? EMPTY,
        this?.numOfNotifications?.orZero() ??  ZERO);
  }
}

extension ContactResponseMapper on ContactResponse? {
  Contacts toDomain(){
    return Contacts(
        this?.email?.orEmpty() ?? EMPTY,
        this?.phone.orEmpty() ?? EMPTY,
        this?.link?.orZero() ?? ZERO,
    );
  }
}

extension AuthenticationResponseMapper on AuthenticationResponse? {
  Authentication toDomain(){
    return Authentication(
         this?.customer?.toDomain(), this?.contacts?.toDomain());
  }
}