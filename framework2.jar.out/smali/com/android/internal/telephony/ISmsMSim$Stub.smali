.class public abstract Lcom/android/internal/telephony/ISmsMSim$Stub;
.super Landroid/os/Binder;
.source "ISmsMSim.java"

# interfaces
.implements Lcom/android/internal/telephony/ISmsMSim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISmsMSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISmsMSim$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISmsMSim"

.field static final TRANSACTION_copyMessageToIccEf:I = 0x4

.field static final TRANSACTION_disableCdmaBroadcast:I = 0xa

.field static final TRANSACTION_disableCellBroadcast:I = 0x8

.field static final TRANSACTION_disableCellBroadcastRange:I = 0xc

.field static final TRANSACTION_enableCdmaBroadcast:I = 0x9

.field static final TRANSACTION_enableCellBroadcast:I = 0x7

.field static final TRANSACTION_enableCellBroadcastRange:I = 0xb

.field static final TRANSACTION_getAllMessagesFromIccEf:I = 0x1

.field static final TRANSACTION_getMessagesFromIccEf:I = 0x2

.field static final TRANSACTION_getPreferredSmsSubscription:I = 0xd

.field static final TRANSACTION_sendMultipartText:I = 0x6

.field static final TRANSACTION_sendText:I = 0x5

.field static final TRANSACTION_updateMessageOnIccEf:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "com.android.internal.telephony.ISmsMSim"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISmsMSim$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISmsMSim;
    .locals 2
    .parameter "obj"

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 39
    :cond_0
    const-string v1, "com.android.internal.telephony.ISmsMSim"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ISmsMSim;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lcom/android/internal/telephony/ISmsMSim;

    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ISmsMSim$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ISmsMSim$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 47
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    sparse-switch p1, :sswitch_data_0

    .line 243
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 55
    :sswitch_0
    const-string v2, "com.android.internal.telephony.ISmsMSim"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    const/4 v2, 0x1

    goto :goto_0

    .line 60
    :sswitch_1
    const-string v2, "com.android.internal.telephony.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 63
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISmsMSim$Stub;->getAllMessagesFromIccEf(I)Ljava/util/List;

    move-result-object v17

    .line 64
    .local v17, _result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 66
    const/4 v2, 0x1

    goto :goto_0

    .line 70
    .end local v3           #_arg0:I
    .end local v17           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :sswitch_2
    const-string v2, "com.android.internal.telephony.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 73
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISmsMSim$Stub;->getMessagesFromIccEf(I)[B

    move-result-object v16

    .line 74
    .local v16, _result:[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 76
    const/4 v2, 0x1

    goto :goto_0

    .line 80
    .end local v3           #_arg0:I
    .end local v16           #_result:[B
    :sswitch_3
    const-string v2, "com.android.internal.telephony.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 84
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 86
    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 88
    .local v5, _arg2:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 89
    .local v6, _arg3:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/telephony/ISmsMSim$Stub;->updateMessageOnIccEf(II[BI)Z

    move-result v16

    .line 90
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v16, :cond_0

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    const/4 v2, 0x1

    goto :goto_0

    .line 91
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 96
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v5           #_arg2:[B
    .end local v6           #_arg3:I
    .end local v16           #_result:Z
    :sswitch_4
    const-string v2, "com.android.internal.telephony.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 100
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 102
    .local v4, _arg1:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 104
    .restart local v5       #_arg2:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 105
    .restart local v6       #_arg3:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/telephony/ISmsMSim$Stub;->copyMessageToIccEf(I[B[BI)Z

    move-result v16

    .line 106
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v16, :cond_1

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 107
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 112
    .end local v3           #_arg0:I
    .end local v4           #_arg1:[B
    .end local v5           #_arg2:[B
    .end local v6           #_arg3:I
    .end local v16           #_result:Z
    :sswitch_5
    const-string v2, "com.android.internal.telephony.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .line 127
    .local v6, _arg3:Landroid/app/PendingIntent;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 134
    .local v7, _arg4:Landroid/app/PendingIntent;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, _arg5:I
    move-object/from16 v2, p0

    .line 135
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/ISmsMSim$Stub;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    .line 136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 124
    .end local v6           #_arg3:Landroid/app/PendingIntent;
    .end local v7           #_arg4:Landroid/app/PendingIntent;
    .end local v8           #_arg5:I
    :cond_2
    const/4 v6, 0x0

    .restart local v6       #_arg3:Landroid/app/PendingIntent;
    goto :goto_3

    .line 131
    :cond_3
    const/4 v7, 0x0

    .restart local v7       #_arg4:Landroid/app/PendingIntent;
    goto :goto_4

    .line 141
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v6           #_arg3:Landroid/app/PendingIntent;
    .end local v7           #_arg4:Landroid/app/PendingIntent;
    :sswitch_6
    const-string v2, "com.android.internal.telephony.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 145
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 147
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v12

    .line 149
    .local v12, _arg2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v13

    .line 151
    .local v13, _arg3:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    .line 153
    .local v14, _arg4:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8       #_arg5:I
    move-object/from16 v9, p0

    move-object v10, v3

    move-object v11, v4

    move v15, v8

    .line 154
    invoke-virtual/range {v9 .. v15}, Lcom/android/internal/telephony/ISmsMSim$Stub;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 160
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v8           #_arg5:I
    .end local v12           #_arg2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v13           #_arg3:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v14           #_arg4:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_7
    const-string v2, "com.android.internal.telephony.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 164
    .local v3, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 165
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISmsMSim$Stub;->enableCellBroadcast(II)Z

    move-result v16

    .line 166
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v16, :cond_4

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 167
    :cond_4
    const/4 v2, 0x0

    goto :goto_5

    .line 172
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_8
    const-string v2, "com.android.internal.telephony.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 176
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 177
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISmsMSim$Stub;->disableCellBroadcast(II)Z

    move-result v16

    .line 178
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v16, :cond_5

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 179
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 184
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_9
    const-string v2, "com.android.internal.telephony.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 188
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 189
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISmsMSim$Stub;->enableCdmaBroadcast(II)Z

    move-result v16

    .line 190
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v16, :cond_6

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 191
    :cond_6
    const/4 v2, 0x0

    goto :goto_7

    .line 196
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_a
    const-string v2, "com.android.internal.telephony.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 200
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 201
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISmsMSim$Stub;->disableCdmaBroadcast(II)Z

    move-result v16

    .line 202
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v16, :cond_7

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 203
    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    .line 208
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_b
    const-string v2, "com.android.internal.telephony.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 212
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 214
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 215
    .local v5, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/ISmsMSim$Stub;->enableCellBroadcastRange(III)Z

    move-result v16

    .line 216
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v16, :cond_8

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 217
    :cond_8
    const/4 v2, 0x0

    goto :goto_9

    .line 222
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v16           #_result:Z
    :sswitch_c
    const-string v2, "com.android.internal.telephony.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 226
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 228
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 229
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/ISmsMSim$Stub;->disableCellBroadcastRange(III)Z

    move-result v16

    .line 230
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v16, :cond_9

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 231
    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    .line 236
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v16           #_result:Z
    :sswitch_d
    const-string v2, "com.android.internal.telephony.ISmsMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISmsMSim$Stub;->getPreferredSmsSubscription()I

    move-result v16

    .line 238
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 51
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
