.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final ACTION_KTLBS_DATA_SMS_RECEIVED:Ljava/lang/String; = "com.kt.location.action.KTLBS_DATA_SMS_RECEIVED"

.field public static final CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CB_RECEIVED"

.field public static final CB_SETTINGS_AVAILABLE_ACTION:Ljava/lang/String; = "android.provider.Telephony.CB_SETTINGS_AVAILABLE"

.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final DEVICE_READY_ACTION:Ljava/lang/String; = "android.provider.Telephony.DEVICE_READY"

.field public static final DIRECTED_SMS_RECEIVED_ACTION:Ljava/lang/String; = "verizon.intent.action.DIRECTED_SMS_RECEIVED"

.field public static final EMERGENCY_CDMA_LOCKSCREEN_ALERT_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.EMERGENCY_CDMA_LOCKSCREEN_ALERT_MESSAGE_RECEIVED"

.field public static final EMERGENCY_CDMA_MESSAGE_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.EMERGENCY_CDMA_MESSAGE_RECEIVED"

.field public static final GET_CB_ERR_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.GET_CB_ERR_RECEIVED"

.field public static final GET_SMSC_ACTION:Ljava/lang/String; = "android.provider.Telephony.GET_SMSC"

.field public static final LGU_APM_RECEIVED_ACTION:Ljava/lang/String; = "android.lgt.action.APM_SMS_RECEIVED"

.field public static final LGU_FOTA_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.PUSH_CONFIRM"

.field public static final RESULT_SMS_ALL_MEMORY_FULL:I = 0x6

.field public static final RESULT_SMS_DSAC_FAIL:I = 0x7

.field public static final RESULT_SMS_DUPLICATE:I = 0x8

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_SEGMENT:I = 0x9

.field public static final RESULT_SMS_SIM_MEMORY_FULL:I = 0x5

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SET_CB_ERR_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SET_CB_ERR_RECEIVED"

.field public static final SHOW_DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "com.kt.show.manger.action.SHOW_DATA_SMS_RECEIVED"

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_RECEIVED"

.field public static final SMS_EMERGENCY_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final SMS_SCPT_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SCPT_RECEIVED"

.field public static final SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

.field public static final WAP_PUSH_DM_NOTI_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

.field public static final WAP_PUSH_DM_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DM_RECEIVED"

.field public static final WAP_PUSH_DM_SET_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.SET_DM"

.field public static final WAP_PUSH_DS_NOTI_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DS_NOTI_RECEIVED"

.field public static final WAP_PUSH_DS_NOTI_RECEIVED_ACTION_TMO:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DS_NOTI_RECEIVED_MYPHONEBOOK"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"

.field public static final WAP_PUSH_SLC_RECEIVED_ACTION:Ljava/lang/String; = "com.nttdocomo.android.syncmlapp.SP_SYNCML_PUSH"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCbMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/gsm/CbMessage;
    .locals 7
    .parameter "intent"

    .prologue
    .line 1129
    const-string/jumbo v6, "pdus"

    invoke-virtual {p0, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v1, v6

    check-cast v1, [Ljava/lang/Object;

    .line 1130
    .local v1, messages:[Ljava/lang/Object;
    array-length v6, v1

    new-array v4, v6, [[B

    .line 1132
    .local v4, pduObjs:[[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v1

    if-ge v0, v6, :cond_0

    .line 1133
    aget-object v6, v1, v0

    check-cast v6, [B

    check-cast v6, [B

    aput-object v6, v4, v0

    .line 1132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1135
    :cond_0
    array-length v6, v4

    new-array v5, v6, [[B

    .line 1136
    .local v5, pdus:[[B
    array-length v3, v5

    .line 1137
    .local v3, pduCount:I
    new-array v2, v3, [Landroid/telephony/gsm/CbMessage;

    .line 1138
    .local v2, msgs:[Landroid/telephony/gsm/CbMessage;
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 1139
    aget-object v6, v4, v0

    aput-object v6, v5, v0

    .line 1140
    aget-object v6, v5, v0

    invoke-static {v6}, Landroid/telephony/gsm/CbMessage;->createFromPdu([B)Landroid/telephony/gsm/CbMessage;

    move-result-object v6

    aput-object v6, v2, v0

    .line 1138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1142
    :cond_1
    return-object v2
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 11
    .parameter "intent"

    .prologue
    .line 1105
    const-string/jumbo v8, "pdus"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v2, v8

    check-cast v2, [Ljava/lang/Object;

    .line 1106
    .local v2, messages:[Ljava/lang/Object;
    const-string v8, "format"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1107
    .local v0, format:Ljava/lang/String;
    array-length v8, v2

    new-array v5, v8, [[B

    .line 1108
    .local v5, pduObjs:[[B
    const-string/jumbo v8, "subscription"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1110
    .local v7, subId:I
    const-string v8, "Telephony"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " getMessagesFromIntent sub_id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v8, v2

    if-ge v1, v8, :cond_0

    .line 1113
    aget-object v8, v2, v1

    check-cast v8, [B

    check-cast v8, [B

    aput-object v8, v5, v1

    .line 1112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1115
    :cond_0
    array-length v8, v5

    new-array v6, v8, [[B

    .line 1116
    .local v6, pdus:[[B
    array-length v4, v6

    .line 1117
    .local v4, pduCount:I
    new-array v3, v4, [Landroid/telephony/SmsMessage;

    .line 1118
    .local v3, msgs:[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    .line 1119
    aget-object v8, v5, v1

    aput-object v8, v6, v1

    .line 1120
    aget-object v8, v6, v1

    invoke-static {v8, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v8

    aput-object v8, v3, v1

    .line 1121
    aget-object v8, v3, v1

    invoke-virtual {v8, v7}, Landroid/telephony/SmsMessage;->setSubId(I)V

    .line 1118
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1123
    :cond_1
    return-object v3
.end method
