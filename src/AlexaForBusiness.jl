#==============================================================================#
# AlexaForBusiness.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/alexaforbusiness-2017-11-09.normal.json
#==============================================================================#

__precompile__()

module AlexaForBusiness

using AWSCore


"""
    using AWSSDK.AlexaForBusiness.associate_contact_with_address_book
    associate_contact_with_address_book([::AWSConfig], arguments::Dict)
    associate_contact_with_address_book([::AWSConfig]; ContactArn=, AddressBookArn=)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "AssociateContactWithAddressBook", arguments::Dict)
    alexaforbusiness([::AWSConfig], "AssociateContactWithAddressBook", ContactArn=, AddressBookArn=)

# AssociateContactWithAddressBook Operation

Associates a contact with a given address book.

# Arguments

## `ContactArn = ::String` -- *Required*
The ARN of the contact to associate with an address book.


## `AddressBookArn = ::String` -- *Required*
The ARN of the address book with which to associate the contact.




# Returns

`AssociateContactWithAddressBookResponse`

# Exceptions

`LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateContactWithAddressBook)
"""
@inline associate_contact_with_address_book(aws::AWSConfig=default_aws_config(); args...) = associate_contact_with_address_book(aws, args)

@inline associate_contact_with_address_book(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "AssociateContactWithAddressBook", args)

@inline associate_contact_with_address_book(args) = associate_contact_with_address_book(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.associate_device_with_room
    associate_device_with_room([::AWSConfig], arguments::Dict)
    associate_device_with_room([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "AssociateDeviceWithRoom", arguments::Dict)
    alexaforbusiness([::AWSConfig], "AssociateDeviceWithRoom", <keyword arguments>)

# AssociateDeviceWithRoom Operation

Associates a device with a given room. This applies all the settings from the room profile to the device, and all the skills in any skill groups added to that room. This operation requires the device to be online, or else a manual sync is required.

# Arguments

## `DeviceArn = ::String`
The ARN of the device to associate to a room. Required.


## `RoomArn = ::String`
The ARN of the room with which to associate the device. Required.




# Returns

`AssociateDeviceWithRoomResponse`

# Exceptions

`LimitExceededException` or `DeviceNotRegisteredException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateDeviceWithRoom)
"""
@inline associate_device_with_room(aws::AWSConfig=default_aws_config(); args...) = associate_device_with_room(aws, args)

@inline associate_device_with_room(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "AssociateDeviceWithRoom", args)

@inline associate_device_with_room(args) = associate_device_with_room(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.associate_skill_group_with_room
    associate_skill_group_with_room([::AWSConfig], arguments::Dict)
    associate_skill_group_with_room([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "AssociateSkillGroupWithRoom", arguments::Dict)
    alexaforbusiness([::AWSConfig], "AssociateSkillGroupWithRoom", <keyword arguments>)

# AssociateSkillGroupWithRoom Operation

Associates a skill group with a given room. This enables all skills in the associated skill group on all devices in the room.

# Arguments

## `SkillGroupArn = ::String`
The ARN of the skill group to associate with a room. Required.


## `RoomArn = ::String`
The ARN of the room with which to associate the skill group. Required.




# Returns

`AssociateSkillGroupWithRoomResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateSkillGroupWithRoom)
"""
@inline associate_skill_group_with_room(aws::AWSConfig=default_aws_config(); args...) = associate_skill_group_with_room(aws, args)

@inline associate_skill_group_with_room(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "AssociateSkillGroupWithRoom", args)

@inline associate_skill_group_with_room(args) = associate_skill_group_with_room(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.create_address_book
    create_address_book([::AWSConfig], arguments::Dict)
    create_address_book([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "CreateAddressBook", arguments::Dict)
    alexaforbusiness([::AWSConfig], "CreateAddressBook", Name=, <keyword arguments>)

# CreateAddressBook Operation

Creates an address book with the specified details.

# Arguments

## `Name = ::String` -- *Required*
The name of the address book.


## `Description = ::String`
The description of the address book.


## `ClientRequestToken = ::String`
A unique, user-specified identifier for the request that ensures idempotency.




# Returns

`CreateAddressBookResponse`

# Exceptions

`AlreadyExistsException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateAddressBook)
"""
@inline create_address_book(aws::AWSConfig=default_aws_config(); args...) = create_address_book(aws, args)

@inline create_address_book(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "CreateAddressBook", args)

@inline create_address_book(args) = create_address_book(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.create_contact
    create_contact([::AWSConfig], arguments::Dict)
    create_contact([::AWSConfig]; FirstName=, PhoneNumber=, <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "CreateContact", arguments::Dict)
    alexaforbusiness([::AWSConfig], "CreateContact", FirstName=, PhoneNumber=, <keyword arguments>)

# CreateContact Operation

Creates a contact with the specified details.

# Arguments

## `DisplayName = ::String`
The name of the contact to display on the console.


## `FirstName = ::String` -- *Required*
The first name of the contact that is used to call the contact on the device.


## `LastName = ::String`
The last name of the contact that is used to call the contact on the device.


## `PhoneNumber = ::String` -- *Required*
The phone number of the contact in E.164 format.


## `ClientRequestToken = ::String`
A unique, user-specified identifier for this request that ensures idempotency.




# Returns

`CreateContactResponse`

# Exceptions

`AlreadyExistsException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateContact)
"""
@inline create_contact(aws::AWSConfig=default_aws_config(); args...) = create_contact(aws, args)

@inline create_contact(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "CreateContact", args)

@inline create_contact(args) = create_contact(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.create_profile
    create_profile([::AWSConfig], arguments::Dict)
    create_profile([::AWSConfig]; ProfileName=, Timezone=, Address=, DistanceUnit=, TemperatureUnit=, WakeWord=, <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "CreateProfile", arguments::Dict)
    alexaforbusiness([::AWSConfig], "CreateProfile", ProfileName=, Timezone=, Address=, DistanceUnit=, TemperatureUnit=, WakeWord=, <keyword arguments>)

# CreateProfile Operation

Creates a new room profile with the specified details.

# Arguments

## `ProfileName = ::String` -- *Required*
The name of a room profile.


## `Timezone = ::String` -- *Required*
The time zone used by a room profile.


## `Address = ::String` -- *Required*
The valid address for the room.


## `DistanceUnit = "METRIC" or "IMPERIAL"` -- *Required*
The distance unit to be used by devices in the profile.


## `TemperatureUnit = "FAHRENHEIT" or "CELSIUS"` -- *Required*
The temperature unit to be used by devices in the profile.


## `WakeWord = "ALEXA", "AMAZON", "ECHO" or "COMPUTER"` -- *Required*
A wake word for Alexa, Echo, Amazon, or a computer.


## `ClientRequestToken = ::String`
The user-specified token that is used during the creation of a profile.


## `SetupModeDisabled = ::Bool`
Whether room profile setup is enabled.


## `MaxVolumeLimit = ::Int`
The maximum volume limit for a room profile.


## `PSTNEnabled = ::Bool`
Whether PSTN calling is enabled.




# Returns

`CreateProfileResponse`

# Exceptions

`LimitExceededException` or `AlreadyExistsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateProfile)
"""
@inline create_profile(aws::AWSConfig=default_aws_config(); args...) = create_profile(aws, args)

@inline create_profile(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "CreateProfile", args)

@inline create_profile(args) = create_profile(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.create_room
    create_room([::AWSConfig], arguments::Dict)
    create_room([::AWSConfig]; RoomName=, <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "CreateRoom", arguments::Dict)
    alexaforbusiness([::AWSConfig], "CreateRoom", RoomName=, <keyword arguments>)

# CreateRoom Operation

Creates a room with the specified details.

# Arguments

## `RoomName = ::String` -- *Required*
The name for the room.


## `Description = ::String`
The description for the room.


## `ProfileArn = ::String`
The profile ARN for the room.


## `ProviderCalendarId = ::String`
The calendar ARN for the room.


## `ClientRequestToken = ::String`
A unique, user-specified identifier for this request that ensures idempotency.


## `Tags = [[ ... ], ...]`
The tags for the room.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateRoomResponse`

# Exceptions

`AlreadyExistsException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateRoom)
"""
@inline create_room(aws::AWSConfig=default_aws_config(); args...) = create_room(aws, args)

@inline create_room(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "CreateRoom", args)

@inline create_room(args) = create_room(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.create_skill_group
    create_skill_group([::AWSConfig], arguments::Dict)
    create_skill_group([::AWSConfig]; SkillGroupName=, <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "CreateSkillGroup", arguments::Dict)
    alexaforbusiness([::AWSConfig], "CreateSkillGroup", SkillGroupName=, <keyword arguments>)

# CreateSkillGroup Operation

Creates a skill group with a specified name and description.

# Arguments

## `SkillGroupName = ::String` -- *Required*
The name for the skill group.


## `Description = ::String`
The description for the skill group.


## `ClientRequestToken = ::String`
A unique, user-specified identifier for this request that ensures idempotency.




# Returns

`CreateSkillGroupResponse`

# Exceptions

`AlreadyExistsException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateSkillGroup)
"""
@inline create_skill_group(aws::AWSConfig=default_aws_config(); args...) = create_skill_group(aws, args)

@inline create_skill_group(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "CreateSkillGroup", args)

@inline create_skill_group(args) = create_skill_group(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.create_user
    create_user([::AWSConfig], arguments::Dict)
    create_user([::AWSConfig]; UserId=, <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "CreateUser", arguments::Dict)
    alexaforbusiness([::AWSConfig], "CreateUser", UserId=, <keyword arguments>)

# CreateUser Operation

Creates a user.

# Arguments

## `UserId = ::String` -- *Required*
The ARN for the user.


## `FirstName = ::String`
The first name for the user.


## `LastName = ::String`
The last name for the user.


## `Email = ::String`
The email address for the user.


## `ClientRequestToken = ::String`
A unique, user-specified identifier for this request that ensures idempotency.


## `Tags = [[ ... ], ...]`
The tags for the user.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateUserResponse`

# Exceptions

`ResourceInUseException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateUser)
"""
@inline create_user(aws::AWSConfig=default_aws_config(); args...) = create_user(aws, args)

@inline create_user(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "CreateUser", args)

@inline create_user(args) = create_user(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.delete_address_book
    delete_address_book([::AWSConfig], arguments::Dict)
    delete_address_book([::AWSConfig]; AddressBookArn=)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "DeleteAddressBook", arguments::Dict)
    alexaforbusiness([::AWSConfig], "DeleteAddressBook", AddressBookArn=)

# DeleteAddressBook Operation

Deletes an address book by the address book ARN.

# Arguments

## `AddressBookArn = ::String` -- *Required*
The ARN of the address book to delete.




# Returns

`DeleteAddressBookResponse`

# Exceptions

`NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteAddressBook)
"""
@inline delete_address_book(aws::AWSConfig=default_aws_config(); args...) = delete_address_book(aws, args)

@inline delete_address_book(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "DeleteAddressBook", args)

@inline delete_address_book(args) = delete_address_book(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.delete_contact
    delete_contact([::AWSConfig], arguments::Dict)
    delete_contact([::AWSConfig]; ContactArn=)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "DeleteContact", arguments::Dict)
    alexaforbusiness([::AWSConfig], "DeleteContact", ContactArn=)

# DeleteContact Operation

Deletes a contact by the contact ARN.

# Arguments

## `ContactArn = ::String` -- *Required*
The ARN of the contact to delete.




# Returns

`DeleteContactResponse`

# Exceptions

`NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteContact)
"""
@inline delete_contact(aws::AWSConfig=default_aws_config(); args...) = delete_contact(aws, args)

@inline delete_contact(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "DeleteContact", args)

@inline delete_contact(args) = delete_contact(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.delete_profile
    delete_profile([::AWSConfig], arguments::Dict)
    delete_profile([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "DeleteProfile", arguments::Dict)
    alexaforbusiness([::AWSConfig], "DeleteProfile", <keyword arguments>)

# DeleteProfile Operation

Deletes a room profile by the profile ARN.

# Arguments

## `ProfileArn = ::String`
The ARN of the room profile to delete. Required.




# Returns

`DeleteProfileResponse`

# Exceptions

`NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteProfile)
"""
@inline delete_profile(aws::AWSConfig=default_aws_config(); args...) = delete_profile(aws, args)

@inline delete_profile(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "DeleteProfile", args)

@inline delete_profile(args) = delete_profile(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.delete_room
    delete_room([::AWSConfig], arguments::Dict)
    delete_room([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "DeleteRoom", arguments::Dict)
    alexaforbusiness([::AWSConfig], "DeleteRoom", <keyword arguments>)

# DeleteRoom Operation

Deletes a room by the room ARN.

# Arguments

## `RoomArn = ::String`
The ARN of the room to delete. Required.




# Returns

`DeleteRoomResponse`

# Exceptions

`NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteRoom)
"""
@inline delete_room(aws::AWSConfig=default_aws_config(); args...) = delete_room(aws, args)

@inline delete_room(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "DeleteRoom", args)

@inline delete_room(args) = delete_room(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.delete_room_skill_parameter
    delete_room_skill_parameter([::AWSConfig], arguments::Dict)
    delete_room_skill_parameter([::AWSConfig]; SkillId=, ParameterKey=, <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "DeleteRoomSkillParameter", arguments::Dict)
    alexaforbusiness([::AWSConfig], "DeleteRoomSkillParameter", SkillId=, ParameterKey=, <keyword arguments>)

# DeleteRoomSkillParameter Operation

Deletes room skill parameter details by room, skill, and parameter key ID.

# Arguments

## `RoomArn = ::String`
The ARN of the room from which to remove the room skill parameter details.


## `SkillId = ::String` -- *Required*
The ID of the skill from which to remove the room skill parameter details.


## `ParameterKey = ::String` -- *Required*
The room skill parameter key for which to remove details.




# Returns

`DeleteRoomSkillParameterResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteRoomSkillParameter)
"""
@inline delete_room_skill_parameter(aws::AWSConfig=default_aws_config(); args...) = delete_room_skill_parameter(aws, args)

@inline delete_room_skill_parameter(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "DeleteRoomSkillParameter", args)

@inline delete_room_skill_parameter(args) = delete_room_skill_parameter(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.delete_skill_group
    delete_skill_group([::AWSConfig], arguments::Dict)
    delete_skill_group([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "DeleteSkillGroup", arguments::Dict)
    alexaforbusiness([::AWSConfig], "DeleteSkillGroup", <keyword arguments>)

# DeleteSkillGroup Operation

Deletes a skill group by skill group ARN.

# Arguments

## `SkillGroupArn = ::String`
The ARN of the skill group to delete. Required.




# Returns

`DeleteSkillGroupResponse`

# Exceptions

`NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteSkillGroup)
"""
@inline delete_skill_group(aws::AWSConfig=default_aws_config(); args...) = delete_skill_group(aws, args)

@inline delete_skill_group(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "DeleteSkillGroup", args)

@inline delete_skill_group(args) = delete_skill_group(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.delete_user
    delete_user([::AWSConfig], arguments::Dict)
    delete_user([::AWSConfig]; EnrollmentId=, <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "DeleteUser", arguments::Dict)
    alexaforbusiness([::AWSConfig], "DeleteUser", EnrollmentId=, <keyword arguments>)

# DeleteUser Operation

Deletes a specified user by user ARN and enrollment ARN.

# Arguments

## `UserArn = ::String`
The ARN of the user to delete in the organization. Required.


## `EnrollmentId = ::String` -- *Required*
The ARN of the user's enrollment in the organization. Required.




# Returns

`DeleteUserResponse`

# Exceptions

`NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteUser)
"""
@inline delete_user(aws::AWSConfig=default_aws_config(); args...) = delete_user(aws, args)

@inline delete_user(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "DeleteUser", args)

@inline delete_user(args) = delete_user(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.disassociate_contact_from_address_book
    disassociate_contact_from_address_book([::AWSConfig], arguments::Dict)
    disassociate_contact_from_address_book([::AWSConfig]; ContactArn=, AddressBookArn=)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "DisassociateContactFromAddressBook", arguments::Dict)
    alexaforbusiness([::AWSConfig], "DisassociateContactFromAddressBook", ContactArn=, AddressBookArn=)

# DisassociateContactFromAddressBook Operation

Disassociates a contact from a given address book.

# Arguments

## `ContactArn = ::String` -- *Required*
The ARN of the contact to disassociate from an address book.


## `AddressBookArn = ::String` -- *Required*
The ARN of the address from which to disassociate the contact.




# Returns

`DisassociateContactFromAddressBookResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DisassociateContactFromAddressBook)
"""
@inline disassociate_contact_from_address_book(aws::AWSConfig=default_aws_config(); args...) = disassociate_contact_from_address_book(aws, args)

@inline disassociate_contact_from_address_book(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "DisassociateContactFromAddressBook", args)

@inline disassociate_contact_from_address_book(args) = disassociate_contact_from_address_book(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.disassociate_device_from_room
    disassociate_device_from_room([::AWSConfig], arguments::Dict)
    disassociate_device_from_room([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "DisassociateDeviceFromRoom", arguments::Dict)
    alexaforbusiness([::AWSConfig], "DisassociateDeviceFromRoom", <keyword arguments>)

# DisassociateDeviceFromRoom Operation

Disassociates a device from its current room. The device continues to be connected to the Wi-Fi network and is still registered to the account. The device settings and skills are removed from the room.

# Arguments

## `DeviceArn = ::String`
The ARN of the device to disassociate from a room. Required.




# Returns

`DisassociateDeviceFromRoomResponse`

# Exceptions

`DeviceNotRegisteredException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DisassociateDeviceFromRoom)
"""
@inline disassociate_device_from_room(aws::AWSConfig=default_aws_config(); args...) = disassociate_device_from_room(aws, args)

@inline disassociate_device_from_room(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "DisassociateDeviceFromRoom", args)

@inline disassociate_device_from_room(args) = disassociate_device_from_room(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.disassociate_skill_group_from_room
    disassociate_skill_group_from_room([::AWSConfig], arguments::Dict)
    disassociate_skill_group_from_room([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "DisassociateSkillGroupFromRoom", arguments::Dict)
    alexaforbusiness([::AWSConfig], "DisassociateSkillGroupFromRoom", <keyword arguments>)

# DisassociateSkillGroupFromRoom Operation

Disassociates a skill group from a specified room. This disables all skills in the skill group on all devices in the room.

# Arguments

## `SkillGroupArn = ::String`
The ARN of the skill group to disassociate from a room. Required.


## `RoomArn = ::String`
The ARN of the room from which the skill group is to be disassociated. Required.




# Returns

`DisassociateSkillGroupFromRoomResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DisassociateSkillGroupFromRoom)
"""
@inline disassociate_skill_group_from_room(aws::AWSConfig=default_aws_config(); args...) = disassociate_skill_group_from_room(aws, args)

@inline disassociate_skill_group_from_room(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "DisassociateSkillGroupFromRoom", args)

@inline disassociate_skill_group_from_room(args) = disassociate_skill_group_from_room(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.get_address_book
    get_address_book([::AWSConfig], arguments::Dict)
    get_address_book([::AWSConfig]; AddressBookArn=)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "GetAddressBook", arguments::Dict)
    alexaforbusiness([::AWSConfig], "GetAddressBook", AddressBookArn=)

# GetAddressBook Operation

Gets address the book details by the address book ARN.

# Arguments

## `AddressBookArn = ::String` -- *Required*
The ARN of the address book for which to request details.




# Returns

`GetAddressBookResponse`

# Exceptions

`NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetAddressBook)
"""
@inline get_address_book(aws::AWSConfig=default_aws_config(); args...) = get_address_book(aws, args)

@inline get_address_book(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "GetAddressBook", args)

@inline get_address_book(args) = get_address_book(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.get_contact
    get_contact([::AWSConfig], arguments::Dict)
    get_contact([::AWSConfig]; ContactArn=)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "GetContact", arguments::Dict)
    alexaforbusiness([::AWSConfig], "GetContact", ContactArn=)

# GetContact Operation

Gets the contact details by the contact ARN.

# Arguments

## `ContactArn = ::String` -- *Required*
The ARN of the contact for which to request details.




# Returns

`GetContactResponse`

# Exceptions

`NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetContact)
"""
@inline get_contact(aws::AWSConfig=default_aws_config(); args...) = get_contact(aws, args)

@inline get_contact(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "GetContact", args)

@inline get_contact(args) = get_contact(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.get_device
    get_device([::AWSConfig], arguments::Dict)
    get_device([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "GetDevice", arguments::Dict)
    alexaforbusiness([::AWSConfig], "GetDevice", <keyword arguments>)

# GetDevice Operation

Gets the details of a device by device ARN.

# Arguments

## `DeviceArn = ::String`
The ARN of the device for which to request details. Required.




# Returns

`GetDeviceResponse`

# Exceptions

`NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetDevice)
"""
@inline get_device(aws::AWSConfig=default_aws_config(); args...) = get_device(aws, args)

@inline get_device(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "GetDevice", args)

@inline get_device(args) = get_device(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.get_profile
    get_profile([::AWSConfig], arguments::Dict)
    get_profile([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "GetProfile", arguments::Dict)
    alexaforbusiness([::AWSConfig], "GetProfile", <keyword arguments>)

# GetProfile Operation

Gets the details of a room profile by profile ARN.

# Arguments

## `ProfileArn = ::String`
The ARN of the room profile for which to request details. Required.




# Returns

`GetProfileResponse`

# Exceptions

`NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetProfile)
"""
@inline get_profile(aws::AWSConfig=default_aws_config(); args...) = get_profile(aws, args)

@inline get_profile(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "GetProfile", args)

@inline get_profile(args) = get_profile(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.get_room
    get_room([::AWSConfig], arguments::Dict)
    get_room([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "GetRoom", arguments::Dict)
    alexaforbusiness([::AWSConfig], "GetRoom", <keyword arguments>)

# GetRoom Operation

Gets room details by room ARN.

# Arguments

## `RoomArn = ::String`
The ARN of the room for which to request details. Required.




# Returns

`GetRoomResponse`

# Exceptions

`NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetRoom)
"""
@inline get_room(aws::AWSConfig=default_aws_config(); args...) = get_room(aws, args)

@inline get_room(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "GetRoom", args)

@inline get_room(args) = get_room(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.get_room_skill_parameter
    get_room_skill_parameter([::AWSConfig], arguments::Dict)
    get_room_skill_parameter([::AWSConfig]; SkillId=, ParameterKey=, <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "GetRoomSkillParameter", arguments::Dict)
    alexaforbusiness([::AWSConfig], "GetRoomSkillParameter", SkillId=, ParameterKey=, <keyword arguments>)

# GetRoomSkillParameter Operation

Gets room skill parameter details by room, skill, and parameter key ARN.

# Arguments

## `RoomArn = ::String`
The ARN of the room from which to get the room skill parameter details.


## `SkillId = ::String` -- *Required*
The ARN of the skill from which to get the room skill parameter details. Required.


## `ParameterKey = ::String` -- *Required*
The room skill parameter key for which to get details. Required.




# Returns

`GetRoomSkillParameterResponse`

# Exceptions

`NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetRoomSkillParameter)
"""
@inline get_room_skill_parameter(aws::AWSConfig=default_aws_config(); args...) = get_room_skill_parameter(aws, args)

@inline get_room_skill_parameter(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "GetRoomSkillParameter", args)

@inline get_room_skill_parameter(args) = get_room_skill_parameter(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.get_skill_group
    get_skill_group([::AWSConfig], arguments::Dict)
    get_skill_group([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "GetSkillGroup", arguments::Dict)
    alexaforbusiness([::AWSConfig], "GetSkillGroup", <keyword arguments>)

# GetSkillGroup Operation

Gets skill group details by skill group ARN.

# Arguments

## `SkillGroupArn = ::String`
The ARN of the skill group for which to get details. Required.




# Returns

`GetSkillGroupResponse`

# Exceptions

`NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetSkillGroup)
"""
@inline get_skill_group(aws::AWSConfig=default_aws_config(); args...) = get_skill_group(aws, args)

@inline get_skill_group(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "GetSkillGroup", args)

@inline get_skill_group(args) = get_skill_group(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.list_device_events
    list_device_events([::AWSConfig], arguments::Dict)
    list_device_events([::AWSConfig]; DeviceArn=, <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "ListDeviceEvents", arguments::Dict)
    alexaforbusiness([::AWSConfig], "ListDeviceEvents", DeviceArn=, <keyword arguments>)

# ListDeviceEvents Operation

Lists the Device Event history for up to 30 days. If EventType isn't specified in the request, this returns a list of all device events in reverse chronological order. If EventType is specified, this returns a list of device events for that EventType in reverse chronological order.

# Arguments

## `DeviceArn = ::String` -- *Required*
The ARN of a device.


## `EventType = "CONNECTION_STATUS" or "DEVICE_STATUS"`
The event type to filter device events.


## `NextToken = ::String`
An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response only includes results beyond the token, up to the value specified by MaxResults.


## `MaxResults = ::Int`
The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved. Required.




# Returns

`ListDeviceEventsResponse`

# Exceptions

`NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListDeviceEvents)
"""
@inline list_device_events(aws::AWSConfig=default_aws_config(); args...) = list_device_events(aws, args)

@inline list_device_events(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "ListDeviceEvents", args)

@inline list_device_events(args) = list_device_events(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.list_skills
    list_skills([::AWSConfig], arguments::Dict)
    list_skills([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "ListSkills", arguments::Dict)
    alexaforbusiness([::AWSConfig], "ListSkills", <keyword arguments>)

# ListSkills Operation

Lists all enabled skills in a specific skill group.

# Arguments

## `SkillGroupArn = ::String`
The ARN of the skill group for which to list enabled skills. Required.


## `NextToken = ::String`
An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`. Required.


## `MaxResults = ::Int`
The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved. Required.




# Returns

`ListSkillsResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListSkills)
"""
@inline list_skills(aws::AWSConfig=default_aws_config(); args...) = list_skills(aws, args)

@inline list_skills(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "ListSkills", args)

@inline list_skills(args) = list_skills(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.list_tags
    list_tags([::AWSConfig], arguments::Dict)
    list_tags([::AWSConfig]; Arn=, <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "ListTags", arguments::Dict)
    alexaforbusiness([::AWSConfig], "ListTags", Arn=, <keyword arguments>)

# ListTags Operation

Lists all tags for a specific resource.

# Arguments

## `Arn = ::String` -- *Required*
The ARN of the specific resource for which to list tags. Required.


## `NextToken = ::String`
An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`.


## `MaxResults = ::Int`
The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved.




# Returns

`ListTagsResponse`

# Exceptions

`NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListTags)
"""
@inline list_tags(aws::AWSConfig=default_aws_config(); args...) = list_tags(aws, args)

@inline list_tags(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "ListTags", args)

@inline list_tags(args) = list_tags(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.put_room_skill_parameter
    put_room_skill_parameter([::AWSConfig], arguments::Dict)
    put_room_skill_parameter([::AWSConfig]; SkillId=, RoomSkillParameter=, <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "PutRoomSkillParameter", arguments::Dict)
    alexaforbusiness([::AWSConfig], "PutRoomSkillParameter", SkillId=, RoomSkillParameter=, <keyword arguments>)

# PutRoomSkillParameter Operation

Updates room skill parameter details by room, skill, and parameter key ID. Not all skills have a room skill parameter.

# Arguments

## `RoomArn = ::String`
The ARN of the room associated with the room skill parameter. Required.


## `SkillId = ::String` -- *Required*
The ARN of the skill associated with the room skill parameter. Required.


## `RoomSkillParameter = [ ... ]` -- *Required*
The updated room skill parameter. Required.
```
 RoomSkillParameter = [
        "ParameterKey" => <required> ::String,
        "ParameterValue" => <required> ::String
    ]
```



# Returns

`PutRoomSkillParameterResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/PutRoomSkillParameter)
"""
@inline put_room_skill_parameter(aws::AWSConfig=default_aws_config(); args...) = put_room_skill_parameter(aws, args)

@inline put_room_skill_parameter(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "PutRoomSkillParameter", args)

@inline put_room_skill_parameter(args) = put_room_skill_parameter(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.resolve_room
    resolve_room([::AWSConfig], arguments::Dict)
    resolve_room([::AWSConfig]; UserId=, SkillId=)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "ResolveRoom", arguments::Dict)
    alexaforbusiness([::AWSConfig], "ResolveRoom", UserId=, SkillId=)

# ResolveRoom Operation

Determines the details for the room from which a skill request was invoked. This operation is used by skill developers.

# Arguments

## `UserId = ::String` -- *Required*
The ARN of the user. Required.


## `SkillId = ::String` -- *Required*
The ARN of the skill that was requested. Required.




# Returns

`ResolveRoomResponse`

# Exceptions

`NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ResolveRoom)
"""
@inline resolve_room(aws::AWSConfig=default_aws_config(); args...) = resolve_room(aws, args)

@inline resolve_room(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "ResolveRoom", args)

@inline resolve_room(args) = resolve_room(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.revoke_invitation
    revoke_invitation([::AWSConfig], arguments::Dict)
    revoke_invitation([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "RevokeInvitation", arguments::Dict)
    alexaforbusiness([::AWSConfig], "RevokeInvitation", <keyword arguments>)

# RevokeInvitation Operation

Revokes an invitation and invalidates the enrollment URL.

# Arguments

## `UserArn = ::String`
The ARN of the user for whom to revoke an enrollment invitation. Required.


## `EnrollmentId = ::String`
The ARN of the enrollment invitation to revoke. Required.




# Returns

`RevokeInvitationResponse`

# Exceptions

`NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/RevokeInvitation)
"""
@inline revoke_invitation(aws::AWSConfig=default_aws_config(); args...) = revoke_invitation(aws, args)

@inline revoke_invitation(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "RevokeInvitation", args)

@inline revoke_invitation(args) = revoke_invitation(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.search_address_books
    search_address_books([::AWSConfig], arguments::Dict)
    search_address_books([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "SearchAddressBooks", arguments::Dict)
    alexaforbusiness([::AWSConfig], "SearchAddressBooks", <keyword arguments>)

# SearchAddressBooks Operation

Searches address books and lists the ones that meet a set of filter and sort criteria.

# Arguments

## `Filters = [[ ... ], ...]`
The filters to use to list a specified set of address books. The supported filter key is AddressBookName.
```
 Filters = [[
        "Key" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `SortCriteria = [[ ... ], ...]`
The sort order to use in listing the specified set of address books. The supported sort key is AddressBookName.
```
 SortCriteria = [[
        "Key" => <required> ::String,
        "Value" => <required> "ASC" or "DESC"
    ], ...]
```

## `NextToken = ::String`
An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response only includes results beyond the token, up to the value specified by MaxResults.


## `MaxResults = ::Int`
The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.




# Returns

`SearchAddressBooksResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchAddressBooks)
"""
@inline search_address_books(aws::AWSConfig=default_aws_config(); args...) = search_address_books(aws, args)

@inline search_address_books(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "SearchAddressBooks", args)

@inline search_address_books(args) = search_address_books(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.search_contacts
    search_contacts([::AWSConfig], arguments::Dict)
    search_contacts([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "SearchContacts", arguments::Dict)
    alexaforbusiness([::AWSConfig], "SearchContacts", <keyword arguments>)

# SearchContacts Operation

Searches contacts and lists the ones that meet a set of filter and sort criteria.

# Arguments

## `Filters = [[ ... ], ...]`
The filters to use to list a specified set of address books. The supported filter keys are DisplayName, FirstName, LastName, and AddressBookArns.
```
 Filters = [[
        "Key" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `SortCriteria = [[ ... ], ...]`
The sort order to use in listing the specified set of contacts. The supported sort keys are DisplayName, FirstName, and LastName.
```
 SortCriteria = [[
        "Key" => <required> ::String,
        "Value" => <required> "ASC" or "DESC"
    ], ...]
```

## `NextToken = ::String`
An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response only includes results beyond the token, up to the value specified by MaxResults.


## `MaxResults = ::Int`
The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.




# Returns

`SearchContactsResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchContacts)
"""
@inline search_contacts(aws::AWSConfig=default_aws_config(); args...) = search_contacts(aws, args)

@inline search_contacts(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "SearchContacts", args)

@inline search_contacts(args) = search_contacts(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.search_devices
    search_devices([::AWSConfig], arguments::Dict)
    search_devices([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "SearchDevices", arguments::Dict)
    alexaforbusiness([::AWSConfig], "SearchDevices", <keyword arguments>)

# SearchDevices Operation

Searches devices and lists the ones that meet a set of filter criteria.

# Arguments

## `NextToken = ::String`
An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`.


## `MaxResults = ::Int`
The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved.


## `Filters = [[ ... ], ...]`
The filters to use to list a specified set of devices. Supported filter keys are DeviceName, DeviceStatus, DeviceStatusDetailCode, RoomName, DeviceType, DeviceSerialNumber, UnassociatedOnly, and ConnectionStatus (ONLINE and OFFLINE).
```
 Filters = [[
        "Key" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `SortCriteria = [[ ... ], ...]`
The sort order to use in listing the specified set of devices. Supported sort keys are DeviceName, DeviceStatus, RoomName, DeviceType, DeviceSerialNumber, and ConnectionStatus.
```
 SortCriteria = [[
        "Key" => <required> ::String,
        "Value" => <required> "ASC" or "DESC"
    ], ...]
```



# Returns

`SearchDevicesResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchDevices)
"""
@inline search_devices(aws::AWSConfig=default_aws_config(); args...) = search_devices(aws, args)

@inline search_devices(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "SearchDevices", args)

@inline search_devices(args) = search_devices(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.search_profiles
    search_profiles([::AWSConfig], arguments::Dict)
    search_profiles([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "SearchProfiles", arguments::Dict)
    alexaforbusiness([::AWSConfig], "SearchProfiles", <keyword arguments>)

# SearchProfiles Operation

Searches room profiles and lists the ones that meet a set of filter criteria.

# Arguments

## `NextToken = ::String`
An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`.


## `MaxResults = ::Int`
The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved.


## `Filters = [[ ... ], ...]`
The filters to use to list a specified set of room profiles. Supported filter keys are ProfileName and Address. Required.
```
 Filters = [[
        "Key" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `SortCriteria = [[ ... ], ...]`
The sort order to use in listing the specified set of room profiles. Supported sort keys are ProfileName and Address.
```
 SortCriteria = [[
        "Key" => <required> ::String,
        "Value" => <required> "ASC" or "DESC"
    ], ...]
```



# Returns

`SearchProfilesResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchProfiles)
"""
@inline search_profiles(aws::AWSConfig=default_aws_config(); args...) = search_profiles(aws, args)

@inline search_profiles(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "SearchProfiles", args)

@inline search_profiles(args) = search_profiles(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.search_rooms
    search_rooms([::AWSConfig], arguments::Dict)
    search_rooms([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "SearchRooms", arguments::Dict)
    alexaforbusiness([::AWSConfig], "SearchRooms", <keyword arguments>)

# SearchRooms Operation

Searches rooms and lists the ones that meet a set of filter and sort criteria.

# Arguments

## `NextToken = ::String`
An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`.


## `MaxResults = ::Int`
The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved.


## `Filters = [[ ... ], ...]`
The filters to use to list a specified set of rooms. The supported filter keys are RoomName and ProfileName.
```
 Filters = [[
        "Key" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `SortCriteria = [[ ... ], ...]`
The sort order to use in listing the specified set of rooms. The supported sort keys are RoomName and ProfileName.
```
 SortCriteria = [[
        "Key" => <required> ::String,
        "Value" => <required> "ASC" or "DESC"
    ], ...]
```



# Returns

`SearchRoomsResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchRooms)
"""
@inline search_rooms(aws::AWSConfig=default_aws_config(); args...) = search_rooms(aws, args)

@inline search_rooms(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "SearchRooms", args)

@inline search_rooms(args) = search_rooms(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.search_skill_groups
    search_skill_groups([::AWSConfig], arguments::Dict)
    search_skill_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "SearchSkillGroups", arguments::Dict)
    alexaforbusiness([::AWSConfig], "SearchSkillGroups", <keyword arguments>)

# SearchSkillGroups Operation

Searches skill groups and lists the ones that meet a set of filter and sort criteria.

# Arguments

## `NextToken = ::String`
An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`. Required.


## `MaxResults = ::Int`
The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved.


## `Filters = [[ ... ], ...]`
The filters to use to list a specified set of skill groups. The supported filter key is SkillGroupName.
```
 Filters = [[
        "Key" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `SortCriteria = [[ ... ], ...]`
The sort order to use in listing the specified set of skill groups. The supported sort key is SkillGroupName.
```
 SortCriteria = [[
        "Key" => <required> ::String,
        "Value" => <required> "ASC" or "DESC"
    ], ...]
```



# Returns

`SearchSkillGroupsResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchSkillGroups)
"""
@inline search_skill_groups(aws::AWSConfig=default_aws_config(); args...) = search_skill_groups(aws, args)

@inline search_skill_groups(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "SearchSkillGroups", args)

@inline search_skill_groups(args) = search_skill_groups(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.search_users
    search_users([::AWSConfig], arguments::Dict)
    search_users([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "SearchUsers", arguments::Dict)
    alexaforbusiness([::AWSConfig], "SearchUsers", <keyword arguments>)

# SearchUsers Operation

Searches users and lists the ones that meet a set of filter and sort criteria.

# Arguments

## `NextToken = ::String`
An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`. Required.


## `MaxResults = ::Int`
The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved. Required.


## `Filters = [[ ... ], ...]`
The filters to use for listing a specific set of users. Required. Supported filter keys are UserId, FirstName, LastName, Email, and EnrollmentStatus.
```
 Filters = [[
        "Key" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `SortCriteria = [[ ... ], ...]`
The sort order to use in listing the filtered set of users. Required. Supported sort keys are UserId, FirstName, LastName, Email, and EnrollmentStatus.
```
 SortCriteria = [[
        "Key" => <required> ::String,
        "Value" => <required> "ASC" or "DESC"
    ], ...]
```



# Returns

`SearchUsersResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchUsers)
"""
@inline search_users(aws::AWSConfig=default_aws_config(); args...) = search_users(aws, args)

@inline search_users(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "SearchUsers", args)

@inline search_users(args) = search_users(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.send_invitation
    send_invitation([::AWSConfig], arguments::Dict)
    send_invitation([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "SendInvitation", arguments::Dict)
    alexaforbusiness([::AWSConfig], "SendInvitation", <keyword arguments>)

# SendInvitation Operation

Sends an enrollment invitation email with a URL to a user. The URL is valid for 72 hours or until you call this operation again, whichever comes first.

# Arguments

## `UserArn = ::String`
The ARN of the user to whom to send an invitation. Required.




# Returns

`SendInvitationResponse`

# Exceptions

`NotFoundException` or `InvalidUserStatusException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SendInvitation)
"""
@inline send_invitation(aws::AWSConfig=default_aws_config(); args...) = send_invitation(aws, args)

@inline send_invitation(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "SendInvitation", args)

@inline send_invitation(args) = send_invitation(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.start_device_sync
    start_device_sync([::AWSConfig], arguments::Dict)
    start_device_sync([::AWSConfig]; Features=, <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "StartDeviceSync", arguments::Dict)
    alexaforbusiness([::AWSConfig], "StartDeviceSync", Features=, <keyword arguments>)

# StartDeviceSync Operation

Resets a device and its account to the known default settings, by clearing all information and settings set by previous users.

# Arguments

## `RoomArn = ::String`
The ARN of the room with which the device to sync is associated. Required.


## `DeviceArn = ::String`
The ARN of the device to sync. Required.


## `Features = ["BLUETOOTH", "VOLUME", "NOTIFICATIONS", "LISTS", "SKILLS" or "ALL", ...]` -- *Required*
Request structure to start the device sync. Required.




# Returns

`StartDeviceSyncResponse`

# Exceptions

`DeviceNotRegisteredException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/StartDeviceSync)
"""
@inline start_device_sync(aws::AWSConfig=default_aws_config(); args...) = start_device_sync(aws, args)

@inline start_device_sync(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "StartDeviceSync", args)

@inline start_device_sync(args) = start_device_sync(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.tag_resource
    tag_resource([::AWSConfig], arguments::Dict)
    tag_resource([::AWSConfig]; Arn=, Tags=)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "TagResource", arguments::Dict)
    alexaforbusiness([::AWSConfig], "TagResource", Arn=, Tags=)

# TagResource Operation

Adds metadata tags to a specified resource.

# Arguments

## `Arn = ::String` -- *Required*
The ARN of the resource to which to add metadata tags. Required.


## `Tags = [[ ... ], ...]` -- *Required*
The tags to be added to the specified resource. Do not provide system tags. Required.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`TagResourceResponse`

# Exceptions

`NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/TagResource)
"""
@inline tag_resource(aws::AWSConfig=default_aws_config(); args...) = tag_resource(aws, args)

@inline tag_resource(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "TagResource", args)

@inline tag_resource(args) = tag_resource(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.untag_resource
    untag_resource([::AWSConfig], arguments::Dict)
    untag_resource([::AWSConfig]; Arn=, TagKeys=)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "UntagResource", arguments::Dict)
    alexaforbusiness([::AWSConfig], "UntagResource", Arn=, TagKeys=)

# UntagResource Operation

Removes metadata tags from a specified resource.

# Arguments

## `Arn = ::String` -- *Required*
The ARN of the resource from which to remove metadata tags. Required.


## `TagKeys = [::String, ...]` -- *Required*
The tags to be removed from the specified resource. Do not provide system tags. Required.




# Returns

`UntagResourceResponse`

# Exceptions

`NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UntagResource)
"""
@inline untag_resource(aws::AWSConfig=default_aws_config(); args...) = untag_resource(aws, args)

@inline untag_resource(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "UntagResource", args)

@inline untag_resource(args) = untag_resource(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.update_address_book
    update_address_book([::AWSConfig], arguments::Dict)
    update_address_book([::AWSConfig]; AddressBookArn=, <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "UpdateAddressBook", arguments::Dict)
    alexaforbusiness([::AWSConfig], "UpdateAddressBook", AddressBookArn=, <keyword arguments>)

# UpdateAddressBook Operation

Updates address book details by the address book ARN.

# Arguments

## `AddressBookArn = ::String` -- *Required*
The ARN of the room to update.


## `Name = ::String`
The updated name of the room.


## `Description = ::String`
The updated description of the room.




# Returns

`UpdateAddressBookResponse`

# Exceptions

`NotFoundException` or `NameInUseException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateAddressBook)
"""
@inline update_address_book(aws::AWSConfig=default_aws_config(); args...) = update_address_book(aws, args)

@inline update_address_book(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "UpdateAddressBook", args)

@inline update_address_book(args) = update_address_book(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.update_contact
    update_contact([::AWSConfig], arguments::Dict)
    update_contact([::AWSConfig]; ContactArn=, <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "UpdateContact", arguments::Dict)
    alexaforbusiness([::AWSConfig], "UpdateContact", ContactArn=, <keyword arguments>)

# UpdateContact Operation

Updates the contact details by the contact ARN.

# Arguments

## `ContactArn = ::String` -- *Required*
The ARN of the contact to update.


## `DisplayName = ::String`
The updated display name of the contact.


## `FirstName = ::String`
The updated first name of the contact.


## `LastName = ::String`
The updated last name of the contact.


## `PhoneNumber = ::String`
The updated phone number of the contact.




# Returns

`UpdateContactResponse`

# Exceptions

`NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateContact)
"""
@inline update_contact(aws::AWSConfig=default_aws_config(); args...) = update_contact(aws, args)

@inline update_contact(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "UpdateContact", args)

@inline update_contact(args) = update_contact(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.update_device
    update_device([::AWSConfig], arguments::Dict)
    update_device([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "UpdateDevice", arguments::Dict)
    alexaforbusiness([::AWSConfig], "UpdateDevice", <keyword arguments>)

# UpdateDevice Operation

Updates the device name by device ARN.

# Arguments

## `DeviceArn = ::String`
The ARN of the device to update. Required.


## `DeviceName = ::String`
The updated device name. Required.




# Returns

`UpdateDeviceResponse`

# Exceptions

`NotFoundException` or `DeviceNotRegisteredException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateDevice)
"""
@inline update_device(aws::AWSConfig=default_aws_config(); args...) = update_device(aws, args)

@inline update_device(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "UpdateDevice", args)

@inline update_device(args) = update_device(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.update_profile
    update_profile([::AWSConfig], arguments::Dict)
    update_profile([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "UpdateProfile", arguments::Dict)
    alexaforbusiness([::AWSConfig], "UpdateProfile", <keyword arguments>)

# UpdateProfile Operation

Updates an existing room profile by room profile ARN.

# Arguments

## `ProfileArn = ::String`
The ARN of the room profile to update. Required.


## `ProfileName = ::String`
The updated name for the room profile.


## `Timezone = ::String`
The updated timezone for the room profile.


## `Address = ::String`
The updated address for the room profile.


## `DistanceUnit = "METRIC" or "IMPERIAL"`
The updated distance unit for the room profile.


## `TemperatureUnit = "FAHRENHEIT" or "CELSIUS"`
The updated temperature unit for the room profile.


## `WakeWord = "ALEXA", "AMAZON", "ECHO" or "COMPUTER"`
The updated wake word for the room profile.


## `SetupModeDisabled = ::Bool`
Whether the setup mode of the profile is enabled.


## `MaxVolumeLimit = ::Int`
The updated maximum volume limit for the room profile.


## `PSTNEnabled = ::Bool`
Whether the PSTN setting of the room profile is enabled.




# Returns

`UpdateProfileResponse`

# Exceptions

`NotFoundException` or `NameInUseException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateProfile)
"""
@inline update_profile(aws::AWSConfig=default_aws_config(); args...) = update_profile(aws, args)

@inline update_profile(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "UpdateProfile", args)

@inline update_profile(args) = update_profile(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.update_room
    update_room([::AWSConfig], arguments::Dict)
    update_room([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "UpdateRoom", arguments::Dict)
    alexaforbusiness([::AWSConfig], "UpdateRoom", <keyword arguments>)

# UpdateRoom Operation

Updates room details by room ARN.

# Arguments

## `RoomArn = ::String`
The ARN of the room to update.


## `RoomName = ::String`
The updated name for the room.


## `Description = ::String`
The updated description for the room.


## `ProviderCalendarId = ::String`
The updated provider calendar ARN for the room.


## `ProfileArn = ::String`
The updated profile ARN for the room.




# Returns

`UpdateRoomResponse`

# Exceptions

`NotFoundException` or `NameInUseException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateRoom)
"""
@inline update_room(aws::AWSConfig=default_aws_config(); args...) = update_room(aws, args)

@inline update_room(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "UpdateRoom", args)

@inline update_room(args) = update_room(default_aws_config(), args)


"""
    using AWSSDK.AlexaForBusiness.update_skill_group
    update_skill_group([::AWSConfig], arguments::Dict)
    update_skill_group([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.alexaforbusiness
    alexaforbusiness([::AWSConfig], "UpdateSkillGroup", arguments::Dict)
    alexaforbusiness([::AWSConfig], "UpdateSkillGroup", <keyword arguments>)

# UpdateSkillGroup Operation

Updates skill group details by skill group ARN.

# Arguments

## `SkillGroupArn = ::String`
The ARN of the skill group to update.


## `SkillGroupName = ::String`
The updated name for the skill group.


## `Description = ::String`
The updated description for the skill group.




# Returns

`UpdateSkillGroupResponse`

# Exceptions

`NotFoundException` or `NameInUseException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateSkillGroup)
"""
@inline update_skill_group(aws::AWSConfig=default_aws_config(); args...) = update_skill_group(aws, args)

@inline update_skill_group(aws::AWSConfig, args) = AWSCore.Services.alexaforbusiness(aws, "UpdateSkillGroup", args)

@inline update_skill_group(args) = update_skill_group(default_aws_config(), args)




end # module AlexaForBusiness


#==============================================================================#
# End of file
#==============================================================================#
