.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# static fields
.field protected static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final ADN:I = 0x1

.field private static final ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final ADN_EMAILS:I = 0x8

.field private static final ADN_EXPANSION:I = 0xa

.field private static final ADN_FROM_CONTACTS:I = 0x5

.field private static final ADN_INIT:I = 0xb

.field private static final ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final DBG:Z = true

.field private static final EMAIL_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final FDN:I = 0x2

.field private static final FDN_FROM_CONTACTS:I = 0x6

.field private static final ICC_CAPA_INFO:I = 0x9

.field private static final MSISDN:I = 0x4

.field private static final MSISDN_FROM_CONTACTS:I = 0x7

.field private static final SDN:I = 0x3

#the value of this static final field might be set in the static constructor
.field static final SECURED_LOG:Z = false

.field private static final STR_ANRA_NUMBER:Ljava/lang/String; = "anrA_number"

.field private static final STR_ANRB_NUMBER:Ljava/lang/String; = "anrB_number"

.field private static final STR_ANRC_NUMBER:Ljava/lang/String; = "anrC_number"

.field private static final STR_ANR_NUMBER:Ljava/lang/String; = "anr_number"

.field protected static final STR_EMAILS:Ljava/lang/String; = "emails"

.field private static final STR_INDEX:Ljava/lang/String; = "adn_index"

.field protected static final STR_NUMBER:Ljava/lang/String; = "number"

.field protected static final STR_PIN2:Ljava/lang/String; = "pin2"

.field protected static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 201
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.product_ship"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/IccProvider;->SECURED_LOG:Z

    .line 203
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string/jumbo v1, "number"

    aput-object v1, v0, v3

    const-string v1, "anr_number"

    aput-object v1, v0, v4

    const-string v1, "anrA_number"

    aput-object v1, v0, v6

    const-string v1, "anrB_number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "anrC_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "emails"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "adn_index"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 215
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "emails"

    aput-object v1, v0, v5

    const-string v1, "adn_index"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->EMAIL_COLUMN_NAMES:[Ljava/lang/String;

    .line 220
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name_MaxCount"

    aput-object v1, v0, v5

    const-string v1, "name_UsedCount"

    aput-object v1, v0, v3

    const-string v1, "name_MaxLength"

    aput-object v1, v0, v4

    const-string/jumbo v1, "number_MaxCount"

    aput-object v1, v0, v6

    const-string/jumbo v1, "number_UsedCount"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "number_MaxLength"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "email_MaxCount"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "email_UsedCount"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "email_MaxLength"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    .line 232
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "maxCount"

    aput-object v1, v0, v5

    const-string/jumbo v1, "usedCount"

    aput-object v1, v0, v3

    const-string v1, "firstIndex"

    aput-object v1, v0, v4

    const-string v1, "name_MaxLength"

    aput-object v1, v0, v6

    const-string/jumbo v1, "number_MaxLength"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    .line 265
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 269
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 270
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 271
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string/jumbo v2, "sdn"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 272
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "msisdn"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 273
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/from_contacts"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 274
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn/from_contacts"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 275
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "msisdn/from_contacts"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 276
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/emails"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 277
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "capacity"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 279
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/expansion"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 280
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/init"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 282
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addExpansionIccRecordToEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "anrNumber"
    .parameter "anrANumber"
    .parameter "anrBNumber"
    .parameter "anrCNumber"
    .parameter "email"
    .parameter "pin2"

    .prologue
    .line 1061
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addExpansionIccRecordToEfByIndex: efType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", anrNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", anrANumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", anrBNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", anrCNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", email="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "addExpansionIccRecordToEfByIndex > *"

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/IccProvider;->secureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const v2, 0xffff

    .line 1068
    .local v2, index:I
    new-instance v3, Lcom/android/internal/telephony/AdnRecord;

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    .local v3, newAdn:Lcom/android/internal/telephony/AdnRecord;
    iput-object p2, v3, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 1071
    iput-object p3, v3, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 1072
    iput-object p4, v3, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 1073
    iput-object p5, v3, Lcom/android/internal/telephony/AdnRecord;->anrA:Ljava/lang/String;

    .line 1074
    iput-object p6, v3, Lcom/android/internal/telephony/AdnRecord;->anrB:Ljava/lang/String;

    .line 1075
    iput-object p7, v3, Lcom/android/internal/telephony/AdnRecord;->anrC:Ljava/lang/String;

    .line 1076
    iget-object v4, v3, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p8, v4, v5

    .line 1079
    :try_start_0
    const-string/jumbo v4, "simphonebook"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1081
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 1082
    invoke-interface {v1, p1, v3, v2, p9}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexUsingAR(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1091
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addExpansionIccRecordToEfByIndex: index =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1092
    return v2

    .line 1086
    :catch_0
    move-exception v0

    .line 1088
    .local v0, ex:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1084
    .end local v0           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"

    .prologue
    .line 1001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIccRecordToEf: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", emails="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "addIccRecordToEf > *"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/IccProvider;->secureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    const/4 v8, 0x0

    .line 1012
    .local v8, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1014
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 1015
    const-string v2, ""

    const-string v3, ""

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1024
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIccRecordToEf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1025
    return v8

    .line 1019
    :catch_0
    move-exception v7

    .line 1021
    .local v7, ex:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1017
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private addIccRecordToEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "email"
    .parameter "pin2"

    .prologue
    .line 1032
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIccRecordToEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", email="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "addIccRecordToEfByIndex > *"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/IccProvider;->secureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    const v5, 0xffff

    .line 1037
    .local v5, index:I
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1039
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 1040
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1050
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIccRecordToEfByIndex: index =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1051
    return v5

    .line 1045
    :catch_0
    move-exception v7

    .line 1047
    .local v7, ex:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1043
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"

    .prologue
    .line 1193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEf: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", emails="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleteIccRecordFromEf > *"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/IccProvider;->secureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    const/4 v8, 0x0

    .line 1199
    .local v8, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1201
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 1202
    const-string v4, ""

    const-string v5, ""

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1210
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1211
    return v8

    .line 1207
    :catch_0
    move-exception v7

    .line 1208
    .local v7, ex:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1205
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteIccRecordFromEfByIndex(IILjava/lang/String;)I
    .locals 8
    .parameter "efType"
    .parameter "index"
    .parameter "pin2"

    .prologue
    .line 1216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleteIccRecordFromEfByIndex > *"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/IccProvider;->secureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1225
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 1226
    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    move v1, p1

    move v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 1234
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEfByIndex: index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1235
    return p2

    .line 1231
    :catch_0
    move-exception v7

    .line 1232
    .local v7, ex:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1229
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private getAdnLikesInfo(I)Landroid/database/MatrixCursor;
    .locals 13
    .parameter "efType"

    .prologue
    .line 960
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 961
    .local v8, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v11, 0x5

    new-array v7, v11, [I

    .line 963
    .local v7, recordInfo:[I
    :try_start_0
    const-string/jumbo v11, "simphonebook"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .line 965
    .local v3, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v3, :cond_0

    .line 966
    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesInfo(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 974
    .end local v3           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v11, Lcom/android/internal/telephony/IccProvider;->ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 975
    .local v0, cursor:Landroid/database/MatrixCursor;
    if-eqz v7, :cond_1

    .line 976
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v9

    .line 977
    .local v9, row:Landroid/database/MatrixCursor$RowBuilder;
    const/4 v11, 0x0

    aget v4, v7, v11

    .line 978
    .local v4, maxCount:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "maxCount = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 979
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 980
    const/4 v11, 0x1

    aget v10, v7, v11

    .line 981
    .local v10, usedCount:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "usedCount = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 982
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 983
    const/4 v11, 0x2

    aget v2, v7, v11

    .line 984
    .local v2, firstIndex:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 985
    const/4 v11, 0x3

    aget v5, v7, v11

    .line 986
    .local v5, nameMax:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 987
    const/4 v11, 0x4

    aget v6, v7, v11

    .line 988
    .local v6, numberMax:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 994
    .end local v2           #firstIndex:I
    .end local v4           #maxCount:I
    .end local v5           #nameMax:I
    .end local v6           #numberMax:I
    .end local v9           #row:Landroid/database/MatrixCursor$RowBuilder;
    .end local v10           #usedCount:I
    :goto_1
    return-object v0

    .line 970
    .end local v0           #cursor:Landroid/database/MatrixCursor;
    :catch_0
    move-exception v1

    .line 971
    .local v1, e:Ljava/lang/NullPointerException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In IccProvider "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 992
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v0       #cursor:Landroid/database/MatrixCursor;
    :cond_1
    const-string v11, "IccProvider"

    const-string v12, " getUSIMPBCapa Cannot load records info"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 969
    .end local v0           #cursor:Landroid/database/MatrixCursor;
    :catch_1
    move-exception v11

    goto/16 :goto_0

    .line 968
    :catch_2
    move-exception v11

    goto/16 :goto_0
.end method

.method private getUSIMPBCapa()Landroid/database/MatrixCursor;
    .locals 19

    .prologue
    .line 892
    const-string v17, "getUSIMPBCapa"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 893
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 894
    .local v14, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v16, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;-><init>()V

    .line 896
    .local v16, usimPhonebookCapaInfo:Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    :try_start_0
    const-string/jumbo v17, "simphonebook"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v7

    .line 898
    .local v7, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v7, :cond_0

    .line 900
    invoke-interface {v7}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfo()Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 908
    .end local v7           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v17, Lcom/android/internal/telephony/IccProvider;->ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 910
    .local v2, cursor:Landroid/database/MatrixCursor;
    if-eqz v16, :cond_1

    .line 911
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v15

    .line 912
    .local v15, row:Landroid/database/MatrixCursor$RowBuilder;
    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v9

    .line 913
    .local v9, nameMaxCount:I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 914
    const/16 v17, 0x1

    const/16 v18, 0x3

    invoke-virtual/range {v16 .. v18}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v10

    .line 915
    .local v10, nameUsedCount:I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 916
    const/16 v17, 0x1

    const/16 v18, 0x2

    invoke-virtual/range {v16 .. v18}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v8

    .line 917
    .local v8, nameLength:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 919
    const/16 v17, 0x2

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v12

    .line 920
    .local v12, numberMaxCount:I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 921
    const/16 v17, 0x2

    const/16 v18, 0x3

    invoke-virtual/range {v16 .. v18}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v13

    .line 922
    .local v13, numberUsedCount:I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 923
    const/16 v17, 0x2

    const/16 v18, 0x2

    invoke-virtual/range {v16 .. v18}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v11

    .line 924
    .local v11, numberLength:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 926
    const/16 v17, 0x4

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    .line 927
    .local v4, emailMaxCount:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 928
    const/16 v17, 0x4

    const/16 v18, 0x3

    invoke-virtual/range {v16 .. v18}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    .line 929
    .local v5, emailUsedCount:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 930
    const/16 v17, 0x4

    const/16 v18, 0x2

    invoke-virtual/range {v16 .. v18}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v3

    .line 931
    .local v3, emailLength:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 934
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[[ArrayList]]   nameMaxCount: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 935
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[[ArrayList]]   nameUsedCount: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 936
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[[ArrayList]]   nameLength: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 937
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[[ArrayList]]   numberMaxCount: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 938
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[[ArrayList]]   numberUsedCount: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 939
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[[ArrayList]]   numberLength: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 940
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[[ArrayList]]   emailMaxCount: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 941
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[[ArrayList]]   emailUsedCount: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 942
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[[ArrayList]]   emailLength: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 949
    .end local v3           #emailLength:I
    .end local v4           #emailMaxCount:I
    .end local v5           #emailUsedCount:I
    .end local v8           #nameLength:I
    .end local v9           #nameMaxCount:I
    .end local v10           #nameUsedCount:I
    .end local v11           #numberLength:I
    .end local v12           #numberMaxCount:I
    .end local v13           #numberUsedCount:I
    .end local v15           #row:Landroid/database/MatrixCursor$RowBuilder;
    :goto_1
    return-object v2

    .line 904
    .end local v2           #cursor:Landroid/database/MatrixCursor;
    :catch_0
    move-exception v6

    .line 905
    .local v6, ex:Ljava/lang/SecurityException;
    invoke-virtual {v6}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 947
    .end local v6           #ex:Ljava/lang/SecurityException;
    .restart local v2       #cursor:Landroid/database/MatrixCursor;
    :cond_1
    const-string v17, "IccProvider"

    const-string v18, " getUSIMPBCapa Cannot load records info"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 902
    .end local v2           #cursor:Landroid/database/MatrixCursor;
    :catch_1
    move-exception v17

    goto/16 :goto_0
.end method

.method private loadEmailRecord(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 9
    .parameter "record"
    .parameter "cursor"
    .parameter "id"

    .prologue
    .line 1326
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1327
    const/4 v7, 0x2

    new-array v1, v7, [Ljava/lang/Object;

    .line 1328
    .local v1, contact:[Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    .line 1329
    .local v3, emails:[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getRecordNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1330
    .local v5, index:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1331
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v2, v0, v4

    .line 1332
    .local v2, email:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1333
    const/4 v7, 0x0

    aput-object v2, v1, v7

    .line 1334
    const/4 v7, 0x1

    aput-object v5, v1, v7

    .line 1335
    invoke-virtual {p2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1331
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1342
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #contact:[Ljava/lang/Object;
    .end local v2           #email:Ljava/lang/String;
    .end local v3           #emails:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #index:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_1
    return-void
.end method

.method private loadFromEf(I)Landroid/database/MatrixCursor;
    .locals 8
    .parameter "efType"

    .prologue
    .line 826
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadFromEf: efType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 828
    const/4 v1, 0x0

    .line 830
    .local v1, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    :try_start_0
    const-string/jumbo v6, "simphonebook"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v5

    .line 832
    .local v5, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v5, :cond_0

    .line 833
    invoke-interface {v5, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 841
    .end local v5           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 843
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 844
    .local v0, N:I
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 845
    .local v2, cursor:Landroid/database/MatrixCursor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adnRecords.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 846
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 847
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {p0, v6, v2, v4}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 846
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 837
    .end local v0           #N:I
    .end local v2           #cursor:Landroid/database/MatrixCursor;
    .end local v4           #i:I
    :catch_0
    move-exception v3

    .line 838
    .local v3, ex:Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 852
    .end local v3           #ex:Ljava/lang/SecurityException;
    :cond_1
    const-string v6, "IccProvider"

    const-string v7, "Cannot load ADN records"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_2
    return-object v2

    .line 835
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method private loadFromEfEmailOnly(I)Landroid/database/MatrixCursor;
    .locals 8
    .parameter "efType"

    .prologue
    .line 858
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadFromEfEmailOnly: efType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 860
    const/4 v1, 0x0

    .line 862
    .local v1, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    :try_start_0
    const-string/jumbo v6, "simphonebook"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v5

    .line 864
    .local v5, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v5, :cond_0

    .line 865
    invoke-interface {v5, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 873
    .end local v5           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 875
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 876
    .local v0, N:I
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->EMAIL_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 877
    .local v2, cursor:Landroid/database/MatrixCursor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " loadFromEfEmailOnly adnRecords.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 878
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 879
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {p0, v6, v2, v4}, Lcom/android/internal/telephony/IccProvider;->loadEmailRecord(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 878
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 869
    .end local v0           #N:I
    .end local v2           #cursor:Landroid/database/MatrixCursor;
    .end local v4           #i:I
    :catch_0
    move-exception v3

    .line 870
    .local v3, ex:Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 884
    .end local v3           #ex:Ljava/lang/SecurityException;
    :cond_1
    const-string v6, "IccProvider"

    const-string v7, " loadFromEfEmailOnly Cannot load ADN records"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->EMAIL_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_2
    return-object v2

    .line 867
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method private secureLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "msg"
    .parameter "securedMsg"

    .prologue
    .line 1311
    sget-boolean v0, Lcom/android/internal/telephony/IccProvider;->SECURED_LOG:Z

    if-eqz v0, :cond_0

    .line 1312
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    :goto_0
    return-void

    .line 1314
    :cond_0
    const-string v0, "IccProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateExpansionIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 5
    .parameter "efType"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "newAnrNumber"
    .parameter "newAnrANumber"
    .parameter "newAnrBNumber"
    .parameter "newAnrCNumber"
    .parameter "newEmail"
    .parameter "index"
    .parameter "pin2"

    .prologue
    .line 1155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateExpansionIccRecordInEfByIndex: efType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newname="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newnumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newanrnumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newanrAnumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newanrBnumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newanrCnumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "updateExpansionIccRecordInEfByIndex > *"

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/IccProvider;->secureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    new-instance v2, Lcom/android/internal/telephony/AdnRecord;

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    .local v2, newAdn:Lcom/android/internal/telephony/AdnRecord;
    iput-object p2, v2, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 1163
    iput-object p3, v2, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 1164
    iput-object p4, v2, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 1165
    iput-object p5, v2, Lcom/android/internal/telephony/AdnRecord;->anrA:Ljava/lang/String;

    .line 1166
    iput-object p6, v2, Lcom/android/internal/telephony/AdnRecord;->anrB:Ljava/lang/String;

    .line 1167
    iput-object p7, v2, Lcom/android/internal/telephony/AdnRecord;->anrC:Ljava/lang/String;

    .line 1168
    iget-object v3, v2, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p8, v3, v4

    .line 1171
    :try_start_0
    const-string/jumbo v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1173
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;

    .line 1174
    if-eqz v1, :cond_0

    .line 1175
    invoke-interface {v1, p1, v2, p9, p10}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexUsingAR(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p9

    .line 1184
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateExpansionIccRecordInEfByIndex: index =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1185
    return p9

    .line 1179
    :catch_0
    move-exception v0

    .line 1181
    .local v0, ex:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1177
    .end local v0           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "efType"
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "pin2"

    .prologue
    .line 1100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIccRecordInEf: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldnumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newnumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "updateIccRecordInEf > *"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/IccProvider;->secureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    const/4 v8, 0x0

    .line 1106
    .local v8, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1108
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1109
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1119
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIccRecordInEf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1120
    return v8

    .line 1114
    :catch_0
    move-exception v7

    .line 1116
    .local v7, ex:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1112
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private updateIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 8
    .parameter "efType"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "newEmail"
    .parameter "index"
    .parameter "pin2"

    .prologue
    .line 1127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIccRecordInEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newnumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "updateIccRecordInEfByIndex > *"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/IccProvider;->secureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1133
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 1134
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p5

    .line 1144
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIccRecordInEfByIndex: index =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1145
    return p5

    .line 1139
    :catch_0
    move-exception v7

    .line 1141
    .local v7, ex:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1137
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 21
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 565
    const/4 v8, -0x1

    .line 566
    .local v8, index:I
    const/4 v9, 0x0

    .line 567
    .local v9, isFromContacts:Z
    const-string v2, "delete"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 569
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 570
    .local v11, match:I
    packed-switch v11, :pswitch_data_0

    .line 599
    :pswitch_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Cannot insert into URL: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 572
    :pswitch_1
    const/16 v3, 0x6f3a

    .line 604
    .local v3, efType:I
    :goto_0
    const/4 v4, 0x0

    .line 605
    .local v4, tag:Ljava/lang/String;
    const/4 v5, 0x0

    .line 606
    .local v5, number:Ljava/lang/String;
    const/4 v6, 0x0

    .line 607
    .local v6, emails:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 609
    .local v7, pin2:Ljava/lang/String;
    const-string v2, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 610
    .local v17, tokens:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v12, v0

    .line 612
    .local v12, n:I
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_7

    .line 613
    aget-object v14, v17, v12

    .line 614
    .local v14, param:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "parsing \'"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, "\'"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 616
    const-string v2, "="

    invoke-virtual {v14, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 617
    .local v13, pair:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 618
    .local v10, key:Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v13, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 620
    .local v18, val:Ljava/lang/String;
    array-length v2, v13

    const/16 v19, 0x2

    move/from16 v0, v19

    if-eq v2, v0, :cond_1

    .line 621
    const-string/jumbo v2, "tag"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 623
    const-string v2, "="

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 624
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 631
    :cond_1
    const-string/jumbo v2, "tag"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 632
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 633
    const-string/jumbo v2, "null"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    const-string v2, "Change null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 636
    const-string v4, ""

    goto :goto_1

    .line 576
    .end local v3           #efType:I
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #emails:[Ljava/lang/String;
    .end local v7           #pin2:Ljava/lang/String;
    .end local v10           #key:Ljava/lang/String;
    .end local v12           #n:I
    .end local v13           #pair:[Ljava/lang/String;
    .end local v14           #param:Ljava/lang/String;
    .end local v17           #tokens:[Ljava/lang/String;
    .end local v18           #val:Ljava/lang/String;
    :pswitch_2
    const/16 v3, 0x6f3b

    .line 577
    .restart local v3       #efType:I
    goto/16 :goto_0

    .line 580
    .end local v3           #efType:I
    :pswitch_3
    const/16 v3, 0x6f40

    .line 581
    .restart local v3       #efType:I
    goto/16 :goto_0

    .line 584
    .end local v3           #efType:I
    :pswitch_4
    const/16 v3, 0x6f3a

    .line 585
    .restart local v3       #efType:I
    const/4 v9, 0x1

    .line 586
    goto/16 :goto_0

    .line 589
    .end local v3           #efType:I
    :pswitch_5
    const/16 v3, 0x6f3b

    .line 590
    .restart local v3       #efType:I
    const/4 v9, 0x1

    .line 591
    goto/16 :goto_0

    .line 594
    .end local v3           #efType:I
    :pswitch_6
    const/16 v3, 0x6f40

    .line 595
    .restart local v3       #efType:I
    const/4 v9, 0x1

    .line 596
    goto/16 :goto_0

    .line 626
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #emails:[Ljava/lang/String;
    .restart local v7       #pin2:Ljava/lang/String;
    .restart local v10       #key:Ljava/lang/String;
    .restart local v12       #n:I
    .restart local v13       #pair:[Ljava/lang/String;
    .restart local v14       #param:Ljava/lang/String;
    .restart local v17       #tokens:[Ljava/lang/String;
    .restart local v18       #val:Ljava/lang/String;
    :cond_2
    const-string v2, "IccProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "resolve: bad whereClause parameter: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 638
    :cond_3
    const-string/jumbo v2, "number"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 639
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 640
    const-string/jumbo v2, "null"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 642
    const-string v2, "Change null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 643
    const-string v5, ""

    goto/16 :goto_1

    .line 646
    :cond_4
    const-string v2, "emails"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 648
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 649
    :cond_5
    const-string/jumbo v2, "pin2"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 650
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 651
    :cond_6
    const-string v2, "adn_index"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 652
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v8, v0

    goto/16 :goto_1

    .line 662
    .end local v10           #key:Ljava/lang/String;
    .end local v13           #pair:[Ljava/lang/String;
    .end local v14           #param:Ljava/lang/String;
    .end local v18           #val:Ljava/lang/String;
    :cond_7
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_8

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 663
    const/4 v15, 0x0

    .line 682
    :goto_2
    return v15

    .line 667
    :cond_8
    if-gez v8, :cond_c

    .line 669
    if-nez v4, :cond_9

    .line 670
    const-string v4, ""

    .line 671
    :cond_9
    if-nez v5, :cond_a

    .line 672
    const-string v5, ""

    :cond_a
    move-object/from16 v2, p0

    .line 673
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 674
    .local v16, success:Z
    if-nez v16, :cond_b

    .line 675
    const/4 v15, 0x0

    goto :goto_2

    .line 678
    :cond_b
    const/4 v15, 0x1

    goto :goto_2

    .line 681
    .end local v16           #success:Z
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8, v7}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEfByIndex(IILjava/lang/String;)I

    move-result v15

    .line 682
    .local v15, ret_index:I
    goto :goto_2

    .line 570
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 371
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :pswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 371
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 26
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 386
    const/4 v11, 0x0

    .line 387
    .local v11, pin2:Ljava/lang/String;
    const/16 v22, 0x0

    .line 389
    .local v22, isFromContacts:Z
    const/16 v18, 0x0

    .line 393
    .local v18, AdnExpansion:Z
    const-string v2, "insert"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 395
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v23

    .line 396
    .local v23, match:I
    packed-switch v23, :pswitch_data_0

    .line 434
    :pswitch_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot insert into URL: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 398
    :pswitch_1
    const/16 v3, 0x6f3a

    .line 438
    .local v3, efType:I
    :goto_0
    const-string/jumbo v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, tag:Ljava/lang/String;
    const-string/jumbo v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 441
    .local v5, number:Ljava/lang/String;
    const/4 v6, 0x0

    .line 442
    .local v6, AnrNumber:Ljava/lang/String;
    const/4 v7, 0x0

    .line 443
    .local v7, AnrANumber:Ljava/lang/String;
    const/4 v8, 0x0

    .line 444
    .local v8, AnrBNumber:Ljava/lang/String;
    const/4 v9, 0x0

    .line 446
    .local v9, AnrCNumber:Ljava/lang/String;
    const/4 v10, 0x0

    .line 448
    .local v10, email:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 450
    .local v20, emails:[Ljava/lang/String;
    const-string v2, "AnrNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    const-string v2, "AnrNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 453
    :cond_0
    const-string v2, "AnrANumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    const-string v2, "AnrANumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 456
    :cond_1
    const-string v2, "AnrBNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 457
    const-string v2, "AnrBNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 459
    :cond_2
    const-string v2, "AnrCNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 460
    const-string v2, "AnrCNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 464
    :cond_3
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 465
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 467
    const/4 v2, 0x0

    const-string v12, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v20, v2

    .line 468
    const/4 v2, 0x0

    aget-object v2, v20, v2

    if-nez v2, :cond_4

    .line 469
    const/4 v2, 0x0

    const-string v12, ""

    aput-object v12, v20, v2

    .line 473
    :cond_4
    if-nez v4, :cond_5

    .line 474
    const-string v4, ""

    .line 475
    :cond_5
    if-nez v5, :cond_6

    .line 476
    const-string v5, ""

    .line 477
    :cond_6
    if-nez v10, :cond_7

    .line 478
    const-string v10, ""

    .line 480
    :cond_7
    if-nez v6, :cond_8

    .line 481
    const-string v6, ""

    .line 482
    :cond_8
    if-nez v7, :cond_9

    .line 483
    const-string v7, ""

    .line 484
    :cond_9
    if-nez v8, :cond_a

    .line 485
    const-string v8, ""

    .line 486
    :cond_a
    if-nez v9, :cond_b

    .line 487
    const-string v9, ""

    .line 491
    :cond_b
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 492
    .local v19, buf:Ljava/lang/StringBuilder;
    if-eqz v22, :cond_d

    .line 494
    const-string v2, "isFromContacts"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 495
    if-eqz v18, :cond_c

    .line 497
    const-string v2, "Insert AdnExpansion"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 498
    invoke-direct/range {v2 .. v11}, Lcom/android/internal/telephony/IccProvider;->addExpansionIccRecordToEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 504
    .local v21, index:I
    :goto_1
    packed-switch v23, :pswitch_data_1

    .line 512
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " insert ["

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "]"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 513
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 540
    .end local v21           #index:I
    :goto_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 548
    :goto_4
    return-object v24

    .line 402
    .end local v3           #efType:I
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #AnrNumber:Ljava/lang/String;
    .end local v7           #AnrANumber:Ljava/lang/String;
    .end local v8           #AnrBNumber:Ljava/lang/String;
    .end local v9           #AnrCNumber:Ljava/lang/String;
    .end local v10           #email:Ljava/lang/String;
    .end local v19           #buf:Ljava/lang/StringBuilder;
    .end local v20           #emails:[Ljava/lang/String;
    :pswitch_2
    const/16 v3, 0x6f3b

    .line 403
    .restart local v3       #efType:I
    const-string/jumbo v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 404
    goto/16 :goto_0

    .line 408
    .end local v3           #efType:I
    :pswitch_3
    const/16 v3, 0x6f3a

    .line 409
    .restart local v3       #efType:I
    const/16 v18, 0x1

    .line 410
    const/16 v22, 0x1

    .line 411
    goto/16 :goto_0

    .line 414
    .end local v3           #efType:I
    :pswitch_4
    const/16 v3, 0x6f40

    .line 415
    .restart local v3       #efType:I
    goto/16 :goto_0

    .line 418
    .end local v3           #efType:I
    :pswitch_5
    const/16 v3, 0x6f3a

    .line 419
    .restart local v3       #efType:I
    const/16 v22, 0x1

    .line 420
    goto/16 :goto_0

    .line 423
    .end local v3           #efType:I
    :pswitch_6
    const/16 v3, 0x6f3b

    .line 424
    .restart local v3       #efType:I
    const-string/jumbo v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 425
    const/16 v22, 0x1

    .line 426
    goto/16 :goto_0

    .line 429
    .end local v3           #efType:I
    :pswitch_7
    const/16 v3, 0x6f40

    .line 430
    .restart local v3       #efType:I
    const/16 v22, 0x1

    .line 431
    goto/16 :goto_0

    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #AnrNumber:Ljava/lang/String;
    .restart local v7       #AnrANumber:Ljava/lang/String;
    .restart local v8       #AnrBNumber:Ljava/lang/String;
    .restart local v9       #AnrCNumber:Ljava/lang/String;
    .restart local v10       #email:Ljava/lang/String;
    .restart local v19       #buf:Ljava/lang/StringBuilder;
    .restart local v20       #emails:[Ljava/lang/String;
    :cond_c
    move-object/from16 v12, p0

    move v13, v3

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    .line 501
    invoke-direct/range {v12 .. v17}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .restart local v21       #index:I
    goto :goto_1

    .line 506
    :pswitch_8
    const-string v2, "[hypathia] insert :ADN_FROM_CONTACTS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 507
    const-string v2, "adn/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 515
    .end local v21           #index:I
    :cond_d
    const/16 v16, 0x0

    move-object/from16 v12, p0

    move v13, v3

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v17, v11

    invoke-direct/range {v12 .. v17}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    .line 517
    .local v25, success:Z
    if-nez v25, :cond_e

    .line 518
    const/16 v24, 0x0

    goto :goto_4

    .line 522
    :cond_e
    packed-switch v23, :pswitch_data_2

    .line 537
    :goto_5
    :pswitch_9
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 524
    :pswitch_a
    const-string v2, "adn/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 528
    :pswitch_b
    const-string v2, "fdn/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 532
    :pswitch_c
    const-string v2, "msisdn/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 396
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 504
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_8
    .end packed-switch

    .line 522
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method protected loadRecord(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 20
    .parameter "record"
    .parameter "cursor"
    .parameter "id"

    .prologue
    .line 1245
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_8

    .line 1247
    const/16 v18, 0x9

    move/from16 v0, v18

    new-array v10, v0, [Ljava/lang/Object;

    .line 1248
    .local v10, contact:[Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v8

    .line 1249
    .local v8, alphaTag:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v17

    .line 1251
    .local v17, number:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v6

    .line 1252
    .local v6, ANRNumber:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAnrA()Ljava/lang/String;

    move-result-object v3

    .line 1253
    .local v3, ANRANumber:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAnrB()Ljava/lang/String;

    move-result-object v4

    .line 1254
    .local v4, ANRBNumber:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAnrC()Ljava/lang/String;

    move-result-object v5

    .line 1256
    .local v5, ANRCNumber:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "loadRecord: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "loadRecord > *"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccProvider;->secureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1258
    const/16 v18, 0x0

    aput-object v8, v10, v18

    .line 1262
    :goto_0
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 1263
    const/16 v18, 0x1

    aput-object v17, v10, v18

    .line 1267
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 1268
    const/16 v18, 0x2

    aput-object v6, v10, v18

    .line 1272
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 1273
    const/16 v18, 0x3

    aput-object v3, v10, v18

    .line 1277
    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 1278
    const/16 v18, 0x4

    aput-object v4, v10, v18

    .line 1282
    :goto_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 1283
    const/16 v18, 0x5

    aput-object v5, v10, v18

    .line 1288
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v13

    .line 1289
    .local v13, emails:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getRecordNumber()I

    move-result v7

    .line 1290
    .local v7, adnIndex:I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1291
    .local v15, index:Ljava/lang/String;
    if-eqz v13, :cond_7

    .line 1292
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1293
    .local v12, emailString:Ljava/lang/StringBuilder;
    move-object v9, v13

    .local v9, arr$:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_6
    move/from16 v0, v16

    if-ge v14, v0, :cond_6

    aget-object v11, v9, v14

    .line 1294
    .local v11, email:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Adding email:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "Adding email > *"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccProvider;->secureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 1260
    .end local v7           #adnIndex:I
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v11           #email:Ljava/lang/String;
    .end local v12           #emailString:Ljava/lang/StringBuilder;
    .end local v13           #emails:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v15           #index:Ljava/lang/String;
    .end local v16           #len$:I
    :cond_0
    const/16 v18, 0x0

    const/16 v19, 0x0

    aput-object v19, v10, v18

    goto/16 :goto_0

    .line 1265
    :cond_1
    const/16 v18, 0x1

    const/16 v19, 0x0

    aput-object v19, v10, v18

    goto/16 :goto_1

    .line 1270
    :cond_2
    const/16 v18, 0x2

    const/16 v19, 0x0

    aput-object v19, v10, v18

    goto/16 :goto_2

    .line 1275
    :cond_3
    const/16 v18, 0x3

    const/16 v19, 0x0

    aput-object v19, v10, v18

    goto/16 :goto_3

    .line 1280
    :cond_4
    const/16 v18, 0x4

    const/16 v19, 0x0

    aput-object v19, v10, v18

    goto/16 :goto_4

    .line 1285
    :cond_5
    const/16 v18, 0x5

    const/16 v19, 0x0

    aput-object v19, v10, v18

    goto/16 :goto_5

    .line 1298
    .restart local v7       #adnIndex:I
    .restart local v9       #arr$:[Ljava/lang/String;
    .restart local v12       #emailString:Ljava/lang/StringBuilder;
    .restart local v13       #emails:[Ljava/lang/String;
    .restart local v14       #i$:I
    .restart local v15       #index:Ljava/lang/String;
    .restart local v16       #len$:I
    :cond_6
    const/16 v18, 0x6

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    .line 1300
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v12           #emailString:Ljava/lang/StringBuilder;
    .end local v14           #i$:I
    .end local v16           #len$:I
    :cond_7
    const/16 v18, 0x7

    aput-object v15, v10, v18

    .line 1301
    const/16 v18, 0x8

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v10, v18

    .line 1302
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1304
    .end local v3           #ANRANumber:Ljava/lang/String;
    .end local v4           #ANRBNumber:Ljava/lang/String;
    .end local v5           #ANRCNumber:Ljava/lang/String;
    .end local v6           #ANRNumber:Ljava/lang/String;
    .end local v7           #adnIndex:I
    .end local v8           #alphaTag:Ljava/lang/String;
    .end local v10           #contact:[Ljava/lang/Object;
    .end local v13           #emails:[Ljava/lang/String;
    .end local v15           #index:Ljava/lang/String;
    .end local v17           #number:Ljava/lang/String;
    :cond_8
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1307
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    return-void
.end method

.method protected normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "inVal"

    .prologue
    const/16 v3, 0x27

    .line 552
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 553
    .local v0, len:I
    move-object v1, p1

    .line 555
    .local v1, retVal:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 556
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 559
    :cond_0
    return-object v1
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 294
    sget-object v8, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 365
    :pswitch_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown URL "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 296
    :pswitch_1
    const/16 v8, 0x6f3a

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 350
    :goto_0
    return-object v8

    .line 299
    :pswitch_2
    const/16 v8, 0x6f3b

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v8

    goto :goto_0

    .line 302
    :pswitch_3
    const/16 v8, 0x6f49

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v8

    goto :goto_0

    .line 306
    :pswitch_4
    const/16 v8, 0x6f3a

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v8

    goto :goto_0

    .line 309
    :pswitch_5
    const/16 v8, 0x6f40

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v8

    goto :goto_0

    .line 312
    :pswitch_6
    const/16 v8, 0x6f3a

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->loadFromEfEmailOnly(I)Landroid/database/MatrixCursor;

    move-result-object v8

    goto :goto_0

    .line 320
    :pswitch_7
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 321
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown URL "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 323
    :cond_0
    const-string v8, "="

    invoke-virtual {p3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 324
    .local v6, pair:[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 325
    .local v5, key:Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 327
    .local v7, value:Ljava/lang/String;
    const-string v8, "EF_TYPE"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 328
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 329
    .local v4, efType:I
    sparse-switch v4, :sswitch_data_0

    .line 353
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown URL "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 332
    :sswitch_0
    const-string/jumbo v1, "ril.ICC_TYPE"

    .line 333
    .local v1, ICCTYPE:Ljava/lang/String;
    const-string v3, "1"

    .line 334
    .local v3, TWOG:Ljava/lang/String;
    const-string v2, "2"

    .line 335
    .local v2, THREEG:Ljava/lang/String;
    const-string/jumbo v8, "ril.ICC_TYPE"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, ADNTYPE:Ljava/lang/String;
    const-string v8, "1"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 337
    const/16 v8, 0x6f3a

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfo(I)Landroid/database/MatrixCursor;

    move-result-object v8

    goto/16 :goto_0

    .line 338
    :cond_1
    const-string v8, "2"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 339
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getUSIMPBCapa()Landroid/database/MatrixCursor;

    move-result-object v8

    goto/16 :goto_0

    .line 344
    .end local v0           #ADNTYPE:Ljava/lang/String;
    .end local v1           #ICCTYPE:Ljava/lang/String;
    .end local v2           #THREEG:Ljava/lang/String;
    .end local v3           #TWOG:Ljava/lang/String;
    :cond_2
    :sswitch_1
    const/16 v8, 0x6f3b

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfo(I)Landroid/database/MatrixCursor;

    move-result-object v8

    goto/16 :goto_0

    .line 347
    :sswitch_2
    const/16 v8, 0x6f49

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfo(I)Landroid/database/MatrixCursor;

    move-result-object v8

    goto/16 :goto_0

    .line 350
    :sswitch_3
    const/16 v8, 0x6f40

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfo(I)Landroid/database/MatrixCursor;

    move-result-object v8

    goto/16 :goto_0

    .line 358
    .end local v4           #efType:I
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown URL "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 294
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 329
    :sswitch_data_0
    .sparse-switch
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_1
        0x6f40 -> :sswitch_3
        0x6f49 -> :sswitch_2
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 25
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 689
    const/4 v11, 0x0

    .line 690
    .local v11, pin2:Ljava/lang/String;
    const/4 v10, -0x1

    .line 691
    .local v10, index:I
    const/16 v21, 0x0

    .line 693
    .local v21, isFromContacts:Z
    const/16 v19, 0x0

    .line 695
    .local v19, AdnExpansion:Z
    const-string/jumbo v1, "update"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 697
    sget-object v1, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v22

    .line 698
    .local v22, match:I
    packed-switch v22, :pswitch_data_0

    .line 735
    :pswitch_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot insert into URL: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 700
    :pswitch_1
    const/16 v2, 0x6f3a

    .line 739
    .local v2, efType:I
    :goto_0
    const-string/jumbo v1, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 740
    .local v14, tag:Ljava/lang/String;
    const-string/jumbo v1, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 741
    .local v15, number:Ljava/lang/String;
    const/16 v20, 0x0

    .line 742
    .local v20, emails:[Ljava/lang/String;
    const-string/jumbo v1, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 743
    .local v3, newTag:Ljava/lang/String;
    const-string/jumbo v1, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 745
    .local v4, newNumber:Ljava/lang/String;
    const/4 v5, 0x0

    .line 746
    .local v5, newAnrNumber:Ljava/lang/String;
    const/4 v6, 0x0

    .line 747
    .local v6, newAnrANumber:Ljava/lang/String;
    const/4 v7, 0x0

    .line 748
    .local v7, newAnrBNumber:Ljava/lang/String;
    const/4 v8, 0x0

    .line 750
    .local v8, newAnrCNumber:Ljava/lang/String;
    const/16 v23, 0x0

    .line 752
    .local v23, newEmails:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 755
    .local v9, email:Ljava/lang/String;
    const-string/jumbo v1, "newAnrNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    const-string/jumbo v1, "newAnrNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 758
    :cond_0
    const-string/jumbo v1, "newAnrANumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 759
    const-string/jumbo v1, "newAnrANumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 761
    :cond_1
    const-string/jumbo v1, "newAnrBNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 762
    const-string/jumbo v1, "newAnrBNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 764
    :cond_2
    const-string/jumbo v1, "newAnrCNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 765
    const-string/jumbo v1, "newAnrCNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 767
    :cond_3
    const-string/jumbo v1, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 768
    const-string/jumbo v1, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 771
    :cond_4
    if-nez v9, :cond_5

    .line 772
    const-string v9, ""

    .line 773
    :cond_5
    if-nez v14, :cond_6

    .line 774
    const-string v14, ""

    .line 775
    :cond_6
    if-nez v15, :cond_7

    .line 776
    const-string v15, ""

    .line 777
    :cond_7
    if-nez v3, :cond_8

    .line 778
    const-string v3, ""

    .line 779
    :cond_8
    if-nez v4, :cond_9

    .line 780
    const-string v4, ""

    .line 782
    :cond_9
    if-nez v5, :cond_a

    .line 783
    const-string v5, ""

    .line 784
    :cond_a
    if-nez v6, :cond_b

    .line 785
    const-string v6, ""

    .line 786
    :cond_b
    if-nez v7, :cond_c

    .line 787
    const-string v7, ""

    .line 788
    :cond_c
    if-nez v8, :cond_d

    .line 789
    const-string v8, ""

    .line 792
    :cond_d
    const-string v1, "adn_index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 793
    const-string v1, "adn_index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 796
    :cond_e
    if-eqz v21, :cond_10

    .line 799
    const-string v1, "isFromContacts"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 800
    if-eqz v19, :cond_f

    move-object/from16 v1, p0

    .line 801
    invoke-direct/range {v1 .. v11}, Lcom/android/internal/telephony/IccProvider;->updateExpansionIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v10

    .end local v14           #tag:Ljava/lang/String;
    .end local v15           #number:Ljava/lang/String;
    :goto_1
    move v1, v10

    .line 819
    :goto_2
    return v1

    .line 704
    .end local v2           #efType:I
    .end local v3           #newTag:Ljava/lang/String;
    .end local v4           #newNumber:Ljava/lang/String;
    .end local v5           #newAnrNumber:Ljava/lang/String;
    .end local v6           #newAnrANumber:Ljava/lang/String;
    .end local v7           #newAnrBNumber:Ljava/lang/String;
    .end local v8           #newAnrCNumber:Ljava/lang/String;
    .end local v9           #email:Ljava/lang/String;
    .end local v20           #emails:[Ljava/lang/String;
    .end local v23           #newEmails:[Ljava/lang/String;
    :pswitch_2
    const/16 v2, 0x6f3b

    .line 705
    .restart local v2       #efType:I
    const-string/jumbo v1, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 706
    goto/16 :goto_0

    .line 709
    .end local v2           #efType:I
    :pswitch_3
    const/16 v2, 0x6f3a

    .line 710
    .restart local v2       #efType:I
    const/16 v19, 0x1

    .line 711
    const/16 v21, 0x1

    .line 712
    goto/16 :goto_0

    .line 715
    .end local v2           #efType:I
    :pswitch_4
    const/16 v2, 0x6f40

    .line 716
    .restart local v2       #efType:I
    goto/16 :goto_0

    .line 719
    .end local v2           #efType:I
    :pswitch_5
    const/16 v2, 0x6f3a

    .line 720
    .restart local v2       #efType:I
    const/16 v21, 0x1

    .line 721
    goto/16 :goto_0

    .line 724
    .end local v2           #efType:I
    :pswitch_6
    const-string/jumbo v1, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 725
    const/16 v2, 0x6f3b

    .line 726
    .restart local v2       #efType:I
    const/16 v21, 0x1

    .line 727
    goto/16 :goto_0

    .line 730
    .end local v2           #efType:I
    :pswitch_7
    const/16 v2, 0x6f40

    .line 731
    .restart local v2       #efType:I
    const/16 v21, 0x1

    .line 732
    goto/16 :goto_0

    .restart local v3       #newTag:Ljava/lang/String;
    .restart local v4       #newNumber:Ljava/lang/String;
    .restart local v5       #newAnrNumber:Ljava/lang/String;
    .restart local v6       #newAnrANumber:Ljava/lang/String;
    .restart local v7       #newAnrBNumber:Ljava/lang/String;
    .restart local v8       #newAnrCNumber:Ljava/lang/String;
    .restart local v9       #email:Ljava/lang/String;
    .restart local v14       #tag:Ljava/lang/String;
    .restart local v15       #number:Ljava/lang/String;
    .restart local v20       #emails:[Ljava/lang/String;
    .restart local v23       #newEmails:[Ljava/lang/String;
    :cond_f
    move-object/from16 v12, p0

    move v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v9

    move/from16 v17, v10

    move-object/from16 v18, v11

    .line 804
    invoke-direct/range {v12 .. v18}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    .end local v14           #tag:Ljava/lang/String;
    .end local v15           #number:Ljava/lang/String;
    move-result v10

    goto :goto_1

    .line 810
    .restart local v14       #tag:Ljava/lang/String;
    .restart local v15       #number:Ljava/lang/String;
    :cond_10
    const-string v1, "Update Adn"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    move-object/from16 v12, p0

    move v13, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v11

    .line 811
    invoke-direct/range {v12 .. v18}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v24

    .line 813
    .local v24, success:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "After UpdateAdn:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v24

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 815
    if-nez v24, :cond_11

    .line 816
    const-string/jumbo v1, "success false"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 817
    const/4 v1, 0x0

    goto :goto_2

    .line 819
    :cond_11
    const/4 v1, 0x1

    goto :goto_2

    .line 698
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
