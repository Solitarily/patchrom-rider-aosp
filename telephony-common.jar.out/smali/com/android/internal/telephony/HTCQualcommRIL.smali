.class public Lcom/android/internal/telephony/HTCQualcommRIL;
.super Lcom/android/internal/telephony/RIL;
.source "HTCQualcommRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# static fields
.field private static final RIL_UNSOL_CDMA_3G_INDICATOR:I = 0xbc1

.field private static final RIL_UNSOL_CDMA_ENHANCE_ROAMING_INDICATOR:I = 0xbc4

.field private static final RIL_UNSOL_CDMA_NETWORK_BASE_PLUSCODE_DIAL:I = 0xbcc

.field private static final RIL_UNSOL_ENTER_LPM:I = 0x5f3

.field private static final RIL_UNSOL_RESPONSE_DATA_NETWORK_STATE_CHANGED:I = 0x520f

.field private static final RIL_UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED:I = 0x520d

.field private static final RIL_UNSOL_RESPONSE_PHONE_MODE_CHANGE:I = 0x1772

.field private static final RIL_UNSOL_RESPONSE_VOICE_RADIO_TECH_CHANGED:I = 0x520c


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 48
    return-void
.end method


# virtual methods
.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 7
    .parameter "p"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 86
    .local v0, dataPosition:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 88
    .local v1, response:I
    sparse-switch v1, :sswitch_data_0

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 104
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 89
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 108
    .local v2, ret:Ljava/lang/Object;
    :goto_1
    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 125
    :sswitch_1
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/HTCQualcommRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 127
    const-string v4, "skipradiooff"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/HTCQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v3

    .line 130
    .local v3, skipRadioPowerOff:Z
    if-nez v3, :cond_1

    .line 131
    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/HTCQualcommRIL;->setRadioPower(ZLandroid/os/Message;)V

    .line 133
    :cond_1
    iget v4, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mPreferredNetworkType:I

    invoke-virtual {p0, v4, v6}, Lcom/android/internal/telephony/HTCQualcommRIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 134
    iget v4, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mCdmaSubscription:I

    invoke-virtual {p0, v4, v6}, Lcom/android/internal/telephony/HTCQualcommRIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 135
    check-cast v2, [I

    .end local v2           #ret:Ljava/lang/Object;
    check-cast v2, [I

    aget v4, v2, v5

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/HTCQualcommRIL;->notifyRegistrantsRilConnectionChanged(I)V

    goto :goto_0

    .line 90
    .end local v3           #skipRadioPowerOff:Z
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 91
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 92
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 93
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 94
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 95
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 96
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 97
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 117
    :sswitch_a
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/HTCQualcommRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 119
    iget-object v4, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_0

    .line 120
    iget-object v4, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 88
    :sswitch_data_0
    .sparse-switch
        0x40a -> :sswitch_9
        0x5f3 -> :sswitch_0
        0xbc1 -> :sswitch_2
        0xbc4 -> :sswitch_3
        0xbcc -> :sswitch_4
        0x1772 -> :sswitch_5
        0x520c -> :sswitch_6
        0x520d -> :sswitch_7
        0x520f -> :sswitch_8
    .end sparse-switch

    .line 108
    :sswitch_data_1
    .sparse-switch
        0x40a -> :sswitch_1
        0x5f3 -> :sswitch_a
        0xbc1 -> :sswitch_a
        0xbc4 -> :sswitch_a
        0xbcc -> :sswitch_a
        0x1772 -> :sswitch_a
        0x520c -> :sswitch_a
        0x520d -> :sswitch_a
        0x520f -> :sswitch_a
    .end sparse-switch
.end method

.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7
    .parameter "p"

    .prologue
    .line 55
    const-string v5, "extraicccardstates"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/HTCQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v2

    .line 57
    .local v2, extraIccCardStates:Z
    if-eqz v2, :cond_2

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 59
    .local v1, dataPosition:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .local v0, cardState:I
    const/4 v5, 0x3

    if-lt v0, v5, :cond_1

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    .line 72
    .end local v0           #cardState:I
    .end local v1           #dataPosition:I
    .local v4, ret:Ljava/lang/Object;
    :goto_0
    const-string v5, "forceCdmaLteNetworkType"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/HTCQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v3

    .line 74
    .local v3, forceCdmaLte:Z
    if-eqz v3, :cond_0

    .line 75
    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/HTCQualcommRIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 78
    :cond_0
    return-object v4

    .line 64
    .end local v3           #forceCdmaLte:Z
    .end local v4           #ret:Ljava/lang/Object;
    .restart local v0       #cardState:I
    .restart local v1       #dataPosition:I
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4       #ret:Ljava/lang/Object;
    goto :goto_0

    .line 68
    .end local v0           #cardState:I
    .end local v1           #dataPosition:I
    .end local v4           #ret:Ljava/lang/Object;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4       #ret:Ljava/lang/Object;
    goto :goto_0
.end method
