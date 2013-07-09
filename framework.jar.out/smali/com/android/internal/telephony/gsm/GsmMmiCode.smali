.class public final Lcom/android/internal/telephony/gsm/GsmMmiCode;
.super Landroid/os/Handler;
.source "GsmMmiCode.java"

# interfaces
.implements Lcom/android/internal/telephony/MmiCode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmMmiCode$1;
    }
.end annotation


# static fields
.field static final ACTION_ACTIVATE:Ljava/lang/String; = "*"

.field static final ACTION_DEACTIVATE:Ljava/lang/String; = "#"

.field static final ACTION_ERASURE:Ljava/lang/String; = "##"

.field static final ACTION_INTERROGATE:Ljava/lang/String; = "*#"

.field static final ACTION_REGISTER:Ljava/lang/String; = "**"

.field static final BearerSvcNotProvisoned:Ljava/lang/String; = "112"

.field static final CallBarred:Ljava/lang/String; = "115"

.field static final DataMissing:Ljava/lang/String; = "126"

.field static final END_OF_USSD_COMMAND:C = '#'

.field static final EVENT_GET_CLIR_COMPLETE:I = 0x2

.field static final EVENT_QUERY_CF_COMPLETE:I = 0x3

.field static final EVENT_QUERY_COMPLETE:I = 0x5

.field static final EVENT_SET_CFF_COMPLETE:I = 0x6

.field static final EVENT_SET_COMPLETE:I = 0x1

.field static final EVENT_USSD_CANCEL_COMPLETE:I = 0x7

.field static final EVENT_USSD_COMPLETE:I = 0x4

.field static final FAILURE_CAUSE_UNEXPECTED_DATA_VALUE:I = 0x7f

.field static final GLOBALDEV_CS:Ljava/lang/String; = "+19085594899"

.field static final IllegalSSOperation:Ljava/lang/String; = "116"

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MATCH_GROUP_ACTION:I = 0x2

.field static final MATCH_GROUP_DIALING_NUMBER:I = 0xc

.field static final MATCH_GROUP_GLOBALDEV_DIALNUM:I = 0x5

.field static final MATCH_GROUP_GLOBALDEV_DIALPREFIX:I = 0x4

.field static final MATCH_GROUP_POUND_STRING:I = 0x1

.field static final MATCH_GROUP_PWD_CONFIRM:I = 0xb

.field static final MATCH_GROUP_SERVICE_CODE:I = 0x3

.field static final MATCH_GROUP_SIA:I = 0x5

.field static final MATCH_GROUP_SIB:I = 0x7

.field static final MATCH_GROUP_SIC:I = 0x9

.field static final MAX_LENGTH_SHORT_CODE:I = 0x2

.field static final NETWORK_OUT_OF_ORDER:I = 0x9e

.field static final NegativePWCheck:Ljava/lang/String; = "129"

.field static final NumOfPWAttempsViolation:Ljava/lang/String; = "130"

.field static final PwRegFailure:Ljava/lang/String; = "128"

.field static final SC_BAIC:Ljava/lang/String; = "35"

.field static final SC_BAICr:Ljava/lang/String; = "351"

.field static final SC_BAOC:Ljava/lang/String; = "33"

.field static final SC_BAOIC:Ljava/lang/String; = "331"

.field static final SC_BAOICxH:Ljava/lang/String; = "332"

.field static final SC_BA_ALL:Ljava/lang/String; = "330"

.field static final SC_BA_MO:Ljava/lang/String; = "333"

.field static final SC_BA_MT:Ljava/lang/String; = "353"

.field static final SC_CFB:Ljava/lang/String; = "67"

.field static final SC_CFNR:Ljava/lang/String; = "62"

.field static final SC_CFNRy:Ljava/lang/String; = "61"

.field static final SC_CFU:Ljava/lang/String; = "21"

.field static final SC_CF_All:Ljava/lang/String; = "002"

.field static final SC_CF_All_Conditional:Ljava/lang/String; = "004"

.field static final SC_CLIP:Ljava/lang/String; = "30"

.field static final SC_CLIR:Ljava/lang/String; = "31"

.field static final SC_CNAP:Ljava/lang/String; = "300"

.field static final SC_COLP:Ljava/lang/String; = "76"

.field static final SC_COLR:Ljava/lang/String; = "77"

.field static final SC_GLOBALDEV_CLIR_INVK:Ljava/lang/String; = "67"

.field static final SC_GLOBALDEV_CLIR_SUPP:Ljava/lang/String; = "82"

.field static final SC_GLOBALDEV_CS:Ljava/lang/String; = "611"

.field static final SC_GLOBALDEV_VM:Ljava/lang/String; = "86"

.field static final SC_PIN:Ljava/lang/String; = "04"

.field static final SC_PIN2:Ljava/lang/String; = "042"

.field static final SC_PUK:Ljava/lang/String; = "05"

.field static final SC_PUK2:Ljava/lang/String; = "052"

.field static final SC_PWD:Ljava/lang/String; = "03"

.field static final SC_WAIT:Ljava/lang/String; = "43"

.field static final SSErrStatus:Ljava/lang/String; = "117"

.field static final SSIncompatibility:Ljava/lang/String; = "120"

.field static final SSNotAvailable:Ljava/lang/String; = "118"

.field static final SSSubscriptionViolation:Ljava/lang/String; = "119"

.field static final SysFailure:Ljava/lang/String; = "125"

.field static final TelesrviceNotProvisoned:Ljava/lang/String; = "113"

.field static final UnexpectedDataValue:Ljava/lang/String; = "127"

.field static final UnknownSubscriber:Ljava/lang/String; = "110"

.field static final absentSubscriber:Ljava/lang/String; = "122"

.field static final deflectionToServedSubscriber:Ljava/lang/String; = "136"

.field static final facilityNotSupported:Ljava/lang/String; = "121"

.field static final illegalSubscriber:Ljava/lang/String; = "111"

.field static final invalidDeflectedToNumber:Ljava/lang/String; = "138"

.field static final longTermDenial:Ljava/lang/String; = "124"

.field static final maxNumberOfMPTY_ParticipantsExceeded:Ljava/lang/String; = "139"

.field static final positionMethodFailure:Ljava/lang/String; = "131"

.field static final rejectedByNetwork:Ljava/lang/String; = "135"

.field static final rejectedByUser:Ljava/lang/String; = "134"

.field static final resourcesNotAvailable:Ljava/lang/String; = "140"

.field static sPatternSuppService:Ljava/util/regex/Pattern; = null

.field static sPatternSuppServiceDCM:Ljava/util/regex/Pattern; = null

.field static sPatternSuppServiceGlobalDev:Ljava/util/regex/Pattern; = null

.field private static sTwoDigitNumberPattern:[Ljava/lang/String; = null

.field static final shortTermDenial:Ljava/lang/String; = "123"

.field static final specialServiceCode:Ljava/lang/String; = "137"

.field static final unknownAlphabet:Ljava/lang/String; = "132"

.field static final ussd_Busy:Ljava/lang/String; = "133"


# instance fields
.field action:Ljava/lang/String;

.field context:Landroid/content/Context;

.field private dialString:Ljava/lang/String;

.field dialingNumber:Ljava/lang/String;

.field private isCallFwdRegister:Z

.field private isPendingUSSD:Z

.field private isSsInfo:Z

.field private isUssdRequest:Z

.field mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field message:Ljava/lang/CharSequence;

.field phone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field poundString:Ljava/lang/String;

.field pwd:Ljava/lang/String;

.field sc:Ljava/lang/String;

.field sia:Ljava/lang/String;

.field sib:Ljava/lang/String;

.field sic:Ljava/lang/String;

.field state:Lcom/android/internal/telephony/MmiCode$State;

.field private ussdCode:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 215
    const-string v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)([^#]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    .line 228
    const-string v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sPatternSuppServiceDCM:Ljava/util/regex/Pattern;

    .line 242
    const-string v0, "((\\*)(\\d{2})(\\+{0,1})(\\d{0,}))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sPatternSuppServiceGlobalDev:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 3
    .parameter "phone"
    .parameter "app"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 825
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 199
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isSsInfo:Z

    .line 200
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isCallFwdRegister:Z

    .line 202
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 206
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ussdCode:Ljava/lang/CharSequence;

    .line 207
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialString:Ljava/lang/String;

    .line 826
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 827
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    .line 828
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 829
    if-eqz p2, :cond_0

    .line 830
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 832
    :cond_0
    return-void
.end method

.method private ErrcodeToString(Ljava/lang/String;)I
    .locals 3
    .parameter "errorcode"

    .prologue
    .line 1833
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrcodeToString errorcode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    const-string v0, "128"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1837
    const v0, 0x1040709

    .line 1953
    :goto_0
    return v0

    .line 1839
    :cond_0
    const-string v0, "129"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1841
    const v0, 0x104070a

    goto :goto_0

    .line 1843
    :cond_1
    const-string v0, "130"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1845
    const v0, 0x104070b

    goto :goto_0

    .line 1847
    :cond_2
    const-string v0, "110"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1849
    const v0, 0x104070c

    goto :goto_0

    .line 1851
    :cond_3
    const-string v0, "112"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1853
    const v0, 0x104070d

    goto :goto_0

    .line 1855
    :cond_4
    const-string v0, "113"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1857
    const v0, 0x104070e

    goto :goto_0

    .line 1859
    :cond_5
    const-string v0, "115"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1861
    const v0, 0x104070f

    goto :goto_0

    .line 1863
    :cond_6
    const-string v0, "116"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1865
    const v0, 0x1040710

    goto :goto_0

    .line 1867
    :cond_7
    const-string v0, "117"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1869
    const v0, 0x1040711

    goto :goto_0

    .line 1871
    :cond_8
    const-string v0, "118"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1873
    const v0, 0x1040712

    goto :goto_0

    .line 1875
    :cond_9
    const-string v0, "119"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1877
    const v0, 0x1040713

    goto :goto_0

    .line 1879
    :cond_a
    const-string v0, "120"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1881
    const v0, 0x1040714

    goto/16 :goto_0

    .line 1883
    :cond_b
    const-string v0, "125"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1885
    const v0, 0x1040715

    goto/16 :goto_0

    .line 1887
    :cond_c
    const-string v0, "126"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1889
    const v0, 0x1040716

    goto/16 :goto_0

    .line 1891
    :cond_d
    const-string v0, "127"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1893
    const v0, 0x1040717

    goto/16 :goto_0

    .line 1895
    :cond_e
    const-string v0, "111"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1897
    const v0, 0x1040718

    goto/16 :goto_0

    .line 1899
    :cond_f
    const-string v0, "121"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1901
    const v0, 0x1040719

    goto/16 :goto_0

    .line 1903
    :cond_10
    const-string v0, "122"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1905
    const v0, 0x104071a

    goto/16 :goto_0

    .line 1907
    :cond_11
    const-string v0, "123"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1909
    const v0, 0x104071b

    goto/16 :goto_0

    .line 1911
    :cond_12
    const-string v0, "124"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1913
    const v0, 0x104071c

    goto/16 :goto_0

    .line 1915
    :cond_13
    const-string v0, "131"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1917
    const v0, 0x104071d

    goto/16 :goto_0

    .line 1919
    :cond_14
    const-string v0, "132"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1921
    const v0, 0x104071e

    goto/16 :goto_0

    .line 1923
    :cond_15
    const-string v0, "133"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1925
    const v0, 0x104071f

    goto/16 :goto_0

    .line 1927
    :cond_16
    const-string v0, "134"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1929
    const v0, 0x1040720

    goto/16 :goto_0

    .line 1931
    :cond_17
    const-string v0, "136"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1933
    const v0, 0x1040722

    goto/16 :goto_0

    .line 1935
    :cond_18
    const-string v0, "137"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1937
    const v0, 0x1040723

    goto/16 :goto_0

    .line 1939
    :cond_19
    const-string v0, "138"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1941
    const v0, 0x1040724

    goto/16 :goto_0

    .line 1943
    :cond_1a
    const-string v0, "139"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1945
    const v0, 0x1040725

    goto/16 :goto_0

    .line 1947
    :cond_1b
    const-string v0, "140"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1949
    const v0, 0x1040726

    goto/16 :goto_0

    .line 1953
    :cond_1c
    const v0, 0x1040727

    goto/16 :goto_0
.end method

.method private barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "cbType"

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "33"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2141
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040137

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2157
    :goto_0
    return-object v0

    .line 2142
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "331"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2143
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040138

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2144
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "332"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2145
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040139

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2146
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "35"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2147
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x104013a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2148
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "351"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2149
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x104013b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2150
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "330"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2151
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x104013c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2152
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "333"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2153
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x104013d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2154
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "353"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2155
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x104013e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 2157
    :cond_7
    const-string v0, " "

    goto/16 :goto_0
.end method

.method private createQueryCallBarringResultMessage(I)Ljava/lang/CharSequence;
    .locals 4
    .parameter "serviceClass"

    .prologue
    .line 2510
    const/4 v1, 0x0

    .line 2513
    .local v1, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2514
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ja"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2515
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2516
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v3, 0x10400f4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2521
    const/4 v0, 0x1

    .line 2522
    .local v0, classMask:I
    :goto_0
    const/16 v2, 0x80

    if-gt v0, v2, :cond_2

    .line 2525
    and-int v2, v0, p1

    if-eqz v2, :cond_1

    .line 2526
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2527
    and-int v2, v0, p1

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2523
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2530
    :cond_2
    return-object v1
.end method

.method private createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;
    .locals 4
    .parameter "serviceClass"

    .prologue
    .line 2493
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v3, 0x10400f4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2496
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 2497
    .local v0, classMask:I
    :goto_0
    const/16 v2, 0x80

    if-gt v0, v2, :cond_1

    .line 2500
    and-int v2, v0, p1

    if-eqz v2, :cond_0

    .line 2501
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2502
    and-int v2, v0, p1

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2498
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2505
    :cond_1
    return-object v1
.end method

.method private forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "cfType"

    .prologue
    .line 2121
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2122
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040135

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2133
    :goto_0
    return-object v0

    .line 2123
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "21"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2124
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040131

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2125
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "67"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2126
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040132

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2127
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "62"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2128
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040134

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2129
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "61"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2130
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040133

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2131
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "004"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2132
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040136

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2133
    :cond_5
    const-string v0, " "

    goto :goto_0
.end method

.method private getActionStringFromReqType(Lcom/android/internal/telephony/gsm/SsData$RequestType;)Ljava/lang/String;
    .locals 2
    .parameter "rType"

    .prologue
    .line 522
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode$1;->$SwitchMap$com$android$internal$telephony$gsm$SsData$RequestType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 535
    const-string v0, ""

    :goto_0
    return-object v0

    .line 524
    :pswitch_0
    const-string v0, "*"

    goto :goto_0

    .line 526
    :pswitch_1
    const-string v0, "#"

    goto :goto_0

    .line 528
    :pswitch_2
    const-string v0, "*#"

    goto :goto_0

    .line 530
    :pswitch_3
    const-string v0, "**"

    goto :goto_0

    .line 532
    :pswitch_4
    const-string v0, "##"

    goto :goto_0

    .line 522
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private getErrorCode(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "ar"

    .prologue
    .line 1546
    const-string v1, ""

    .line 1547
    .local v1, errCode:Ljava/lang/CharSequence;
    const-string v2, "GSM"

    const-string v3, "getErrorCode()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_0

    .line 1550
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 1551
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmMmiCode$1;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1568
    const-string v1, "0"

    .line 1573
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    :goto_0
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getErrorCode( return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    return-object v1

    .line 1553
    .restart local v0       #err:Lcom/android/internal/telephony/CommandException$Error;
    :pswitch_0
    const-string v1, "17"

    .line 1554
    goto :goto_0

    .line 1556
    :pswitch_1
    const-string v1, "38"

    .line 1557
    goto :goto_0

    .line 1559
    :pswitch_2
    const-string v1, "13"

    .line 1560
    goto :goto_0

    .line 1562
    :pswitch_3
    const-string v1, "36"

    .line 1563
    goto :goto_0

    .line 1565
    :pswitch_4
    const-string v1, "10"

    .line 1566
    goto :goto_0

    .line 1551
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "ar"

    .prologue
    .line 1513
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_6

    .line 1514
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 1515
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    .line 1516
    const-string v1, "GSM"

    const-string v2, "FDN_CHECK_FAILURE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v2, 0x10400ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1541
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :goto_0
    return-object v1

    .line 1518
    .restart local v0       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_1

    .line 1519
    const-string v1, "GSM"

    const-string v2, "USSD_MODIFIED_TO_DIAL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v2, 0x10400ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 1521
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_2

    .line 1522
    const-string v1, "GSM"

    const-string v2, "USSD_MODIFIED_TO_SS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v2, 0x10400ee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 1524
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_3

    .line 1525
    const-string v1, "GSM"

    const-string v2, "USSD_MODIFIED_TO_USSD"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v2, 0x10400ef

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 1527
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_4

    .line 1528
    const-string v1, "GSM"

    const-string v2, "SS_MODIFIED_TO_DIAL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v2, 0x10400f0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 1530
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_5

    .line 1531
    const-string v1, "GSM"

    const-string v2, "SS_MODIFIED_TO_USSD"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v2, 0x10400f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 1533
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_6

    .line 1534
    const-string v1, "GSM"

    const-string v2, "SS_MODIFIED_TO_SS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v2, 0x10400f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 1541
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v2, 0x10400ea

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private getScString()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1579
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x104010c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1598
    :goto_0
    return-object v0

    .line 1581
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1584
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x104010a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1585
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1586
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040106

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1587
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1588
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040107

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1589
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1590
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x104010d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1591
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "43"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1592
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x104010b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1593
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinCommand()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1594
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x104010e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1598
    :cond_6
    const-string v0, ""

    goto :goto_0
.end method

.method private getScStringFromScType(Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Ljava/lang/String;
    .locals 2
    .parameter "sType"

    .prologue
    .line 481
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode$1;->$SwitchMap$com$android$internal$telephony$gsm$SsData$ServiceType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 518
    const-string v0, ""

    :goto_0
    return-object v0

    .line 483
    :pswitch_0
    const-string v0, "21"

    goto :goto_0

    .line 485
    :pswitch_1
    const-string v0, "67"

    goto :goto_0

    .line 487
    :pswitch_2
    const-string v0, "61"

    goto :goto_0

    .line 489
    :pswitch_3
    const-string v0, "62"

    goto :goto_0

    .line 491
    :pswitch_4
    const-string v0, "002"

    goto :goto_0

    .line 493
    :pswitch_5
    const-string v0, "004"

    goto :goto_0

    .line 495
    :pswitch_6
    const-string v0, "30"

    goto :goto_0

    .line 497
    :pswitch_7
    const-string v0, "31"

    goto :goto_0

    .line 499
    :pswitch_8
    const-string v0, "43"

    goto :goto_0

    .line 501
    :pswitch_9
    const-string v0, "33"

    goto :goto_0

    .line 503
    :pswitch_a
    const-string v0, "331"

    goto :goto_0

    .line 505
    :pswitch_b
    const-string v0, "332"

    goto :goto_0

    .line 507
    :pswitch_c
    const-string v0, "35"

    goto :goto_0

    .line 509
    :pswitch_d
    const-string v0, "351"

    goto :goto_0

    .line 511
    :pswitch_e
    const-string v0, "330"

    goto :goto_0

    .line 513
    :pswitch_f
    const-string v0, "333"

    goto :goto_0

    .line 515
    :pswitch_10
    const-string v0, "353"

    goto :goto_0

    .line 481
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private handlePasswordError(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 1322
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1324
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1326
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 1327
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 1328
    return-void
.end method

.method private static isEmptyOrNull(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 558
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isKTMMICodeSupport(Ljava/lang/String;I)Z
    .locals 9
    .parameter "dialString"
    .parameter "start_ptr"

    .prologue
    const/16 v8, 0x23

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 742
    const/4 v2, 0x0

    .line 743
    .local v2, i:I
    const/4 v3, 0x0

    .line 744
    .local v3, sc_start_ptr:I
    const-string v1, ""

    .line 745
    .local v1, TempSC:Ljava/lang/String;
    const/16 v6, 0x28

    new-array v0, v6, [Ljava/lang/String;

    const-string v6, "75"

    aput-object v6, v0, v5

    const-string v6, "750"

    aput-object v6, v0, v4

    const/4 v6, 0x2

    const-string v7, "751"

    aput-object v7, v0, v6

    const/4 v6, 0x3

    const-string v7, "752"

    aput-object v7, v0, v6

    const/4 v6, 0x4

    const-string v7, "753"

    aput-object v7, v0, v6

    const/4 v6, 0x5

    const-string v7, "754"

    aput-object v7, v0, v6

    const/4 v6, 0x6

    const-string v7, "66"

    aput-object v7, v0, v6

    const/4 v6, 0x7

    const-string v7, "30"

    aput-object v7, v0, v6

    const/16 v6, 0x8

    const-string v7, "31"

    aput-object v7, v0, v6

    const/16 v6, 0x9

    const-string v7, "76"

    aput-object v7, v0, v6

    const/16 v6, 0xa

    const-string v7, "77"

    aput-object v7, v0, v6

    const/16 v6, 0xb

    const-string v7, "21"

    aput-object v7, v0, v6

    const/16 v6, 0xc

    const-string v7, "67"

    aput-object v7, v0, v6

    const/16 v6, 0xd

    const-string v7, "61"

    aput-object v7, v0, v6

    const/16 v6, 0xe

    const-string v7, "62"

    aput-object v7, v0, v6

    const/16 v6, 0xf

    const-string v7, "002"

    aput-object v7, v0, v6

    const/16 v6, 0x10

    const-string v7, "004"

    aput-object v7, v0, v6

    const/16 v6, 0x11

    const-string v7, "43"

    aput-object v7, v0, v6

    const/16 v6, 0x12

    const-string v7, "361"

    aput-object v7, v0, v6

    const/16 v6, 0x13

    const-string v7, "362"

    aput-object v7, v0, v6

    const/16 v6, 0x14

    const-string v7, "363"

    aput-object v7, v0, v6

    const/16 v6, 0x15

    const-string v7, "360"

    aput-object v7, v0, v6

    const/16 v6, 0x16

    const-string v7, "33"

    aput-object v7, v0, v6

    const/16 v6, 0x17

    const-string v7, "331"

    aput-object v7, v0, v6

    const/16 v6, 0x18

    const-string v7, "332"

    aput-object v7, v0, v6

    const/16 v6, 0x19

    const-string v7, "35"

    aput-object v7, v0, v6

    const/16 v6, 0x1a

    const-string v7, "351"

    aput-object v7, v0, v6

    const/16 v6, 0x1b

    const-string v7, "330"

    aput-object v7, v0, v6

    const/16 v6, 0x1c

    const-string v7, "333"

    aput-object v7, v0, v6

    const/16 v6, 0x1d

    const-string v7, "353"

    aput-object v7, v0, v6

    const/16 v6, 0x1e

    const-string v7, "96"

    aput-object v7, v0, v6

    const/16 v6, 0x1f

    const-string v7, "37"

    aput-object v7, v0, v6

    const/16 v6, 0x20

    const-string v7, "214"

    aput-object v7, v0, v6

    const/16 v6, 0x21

    const-string v7, "300"

    aput-object v7, v0, v6

    const/16 v6, 0x22

    const-string v7, "591"

    aput-object v7, v0, v6

    const-string v6, "592"

    aput-object v6, v0, v8

    const/16 v6, 0x24

    const-string v7, "593"

    aput-object v7, v0, v6

    const/16 v6, 0x25

    const-string v7, "594"

    aput-object v7, v0, v6

    const/16 v6, 0x26

    const-string v7, "88"

    aput-object v7, v0, v6

    const/16 v6, 0x27

    const-string v7, "03"

    aput-object v7, v0, v6

    .line 779
    .local v0, KTMMICode:[Ljava/lang/String;
    :goto_0
    add-int v6, p1, v3

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2a

    if-eq v6, v7, :cond_0

    add-int v6, p1, v3

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_0

    .line 780
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int v7, p1, v3

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 781
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 784
    :cond_0
    const/4 v2, 0x0

    :goto_1
    array-length v6, v0

    if-ge v2, v6, :cond_2

    .line 785
    aget-object v6, v0, v2

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 789
    :goto_2
    return v4

    .line 784
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v4, v5

    .line 789
    goto :goto_2
.end method

.method static isMMICodeSupport(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmMmiCode;)Z
    .locals 12
    .parameter "dialString"
    .parameter "mmiCode"

    .prologue
    const/16 v11, 0x23

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 681
    const/4 v0, 0x0

    .line 684
    .local v0, isSupport:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v10, :cond_8

    const-string v5, "#"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "*"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_0
    const-string v5, "#"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 685
    const-string v1, "000"

    .line 686
    .local v1, mcc:Ljava/lang/String;
    const-string v5, "gsm.operator.numeric"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 687
    .local v2, numeric:Ljava/lang/String;
    const-string/jumbo v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 689
    .local v3, salesCode:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_1

    .line 690
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "numeric = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 694
    :cond_1
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " salesCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const-string v5, "KTT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "450"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 697
    const/4 v4, 0x0

    .line 701
    .local v4, start_ptr:I
    const-string v5, "#"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 702
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v11, :cond_3

    .line 703
    const/4 v4, 0x2

    .line 706
    :goto_0
    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isKTMMICodeSupport(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 707
    const/4 v0, 0x1

    .line 737
    .end local v1           #mcc:Ljava/lang/String;
    .end local v2           #numeric:Ljava/lang/String;
    .end local v3           #salesCode:Ljava/lang/String;
    .end local v4           #start_ptr:I
    :cond_2
    :goto_1
    return v0

    .line 705
    .restart local v1       #mcc:Ljava/lang/String;
    .restart local v2       #numeric:Ljava/lang/String;
    .restart local v3       #salesCode:Ljava/lang/String;
    .restart local v4       #start_ptr:I
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 712
    :cond_4
    const-string v5, "*"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 713
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_5

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v11, :cond_6

    .line 714
    :cond_5
    const/4 v4, 0x2

    .line 717
    :goto_2
    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isKTMMICodeSupport(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 718
    const/4 v0, 0x1

    goto :goto_1

    .line 716
    :cond_6
    const/4 v4, 0x1

    goto :goto_2

    .line 721
    .end local v4           #start_ptr:I
    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    .line 725
    .end local v1           #mcc:Ljava/lang/String;
    .end local v2           #numeric:Ljava/lang/String;
    .end local v3           #salesCode:Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x37

    if-ne v5, v6, :cond_9

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_9

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x39

    if-gt v5, v6, :cond_9

    .line 726
    const/4 v0, 0x1

    goto :goto_1

    .line 729
    :cond_9
    const-string v5, "36"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "7"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 730
    :cond_a
    const/4 v0, 0x1

    goto :goto_1

    .line 732
    :cond_b
    const-string v5, "#31#"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "*31#"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_2

    .line 733
    const-string v5, "gsmmmi"

    const-string v6, "isMMICodeSupport 4"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private isServiceClassVoiceorNone(I)Z
    .locals 1
    .parameter "serviceClass"

    .prologue
    .line 539
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isServiceCodeCallBarring(Ljava/lang/String;)Z
    .locals 4
    .parameter "sc"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 645
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_EnableCallBarringConnectToUssd"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 647
    if-eqz p0, :cond_1

    const-string v2, "33"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "331"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "332"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "35"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "351"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 655
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 647
    goto :goto_0

    .line 655
    :cond_2
    if-eqz p0, :cond_3

    const-string v2, "33"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "331"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "332"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "35"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "351"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "330"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "333"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "353"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static isServiceCodeCallForwarding(Ljava/lang/String;)Z
    .locals 1
    .parameter "sc"

    .prologue
    .line 636
    if-eqz p0, :cond_1

    const-string v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "67"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "62"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isServiceCodeUnsupported(Ljava/lang/String;)Z
    .locals 1
    .parameter "sc"

    .prologue
    .line 669
    if-eqz p0, :cond_1

    const-string v0, "76"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "77"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "300"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Z
    .locals 2
    .parameter "dialString"
    .parameter "phone"

    .prologue
    const/4 v0, 0x0

    .line 932
    if-nez p0, :cond_1

    .line 947
    :cond_0
    :goto_0
    return v0

    .line 940
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 944
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 947
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Z
    .locals 6
    .parameter "dialString"
    .parameter "phone"

    .prologue
    const/16 v5, 0x23

    const/4 v0, 0x1

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 973
    if-eqz p0, :cond_5

    .line 974
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 976
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v4, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return v0

    .line 982
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v4, :cond_2

    .line 983
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_0

    .line 989
    :cond_2
    const-string v2, "0"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "00"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v4, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_4

    :cond_3
    move v0, v1

    .line 992
    goto :goto_0

    .line 996
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v4, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    :cond_5
    move v0, v1

    .line 1001
    goto :goto_0
.end method

.method private static isTwoDigitShortCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "dialString"

    .prologue
    const/4 v4, 0x0

    .line 905
    const-string v5, "GSM"

    const-string v6, "isTwoDigitShortCode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 922
    :cond_0
    :goto_0
    return v4

    .line 909
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    if-nez v5, :cond_2

    .line 910
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    .line 914
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 915
    .local v1, dialnumber:Ljava/lang/String;
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Two Digit Number Pattern "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 917
    const-string v4, "GSM"

    const-string v5, "Two Digit Number Pattern -true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const/4 v4, 0x1

    goto :goto_0

    .line 914
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 921
    .end local v1           #dialnumber:Ljava/lang/String;
    :cond_4
    const-string v5, "GSM"

    const-string v6, "Two Digit Number Pattern -false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;
    .locals 10
    .parameter "info"
    .parameter "serviceClassMask"

    .prologue
    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2166
    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v7, "{0}"

    aput-object v7, v3, v6

    const-string/jumbo v7, "{1}"

    aput-object v7, v3, v5

    const-string/jumbo v7, "{2}"

    aput-object v7, v3, v9

    .line 2167
    .local v3, sources:[Ljava/lang/String;
    new-array v1, v8, [Ljava/lang/CharSequence;

    .line 2173
    .local v1, destinations:[Ljava/lang/CharSequence;
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v7, v9, :cond_2

    move v2, v5

    .line 2176
    .local v2, needTimeTemplate:Z
    :goto_0
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v7, v5, :cond_4

    .line 2177
    if-eqz v2, :cond_3

    .line 2178
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v8, 0x1040160

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2205
    .local v4, template:Ljava/lang/CharSequence;
    :goto_1
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, p2

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v1, v6

    .line 2206
    iget-object v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    invoke-static {v7, v8}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v5

    .line 2207
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v9

    .line 2210
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v7, :cond_1

    .line 2211
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v7, v5, :cond_7

    move v0, v5

    .line 2212
    .local v0, cffEnabled:Z
    :goto_2
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v6, p2

    if-ne v6, v5, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v6, :cond_0

    .line 2213
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v6, v5, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZ)V

    .line 2215
    :cond_0
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v6, p2

    const/16 v7, 0x10

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v6, :cond_1

    .line 2216
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v6, v5, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->setVideoCallForwardingFlag(IZ)V

    .line 2231
    .end local v0           #cffEnabled:Z
    :cond_1
    invoke-static {v4, v3, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    return-object v5

    .end local v2           #needTimeTemplate:Z
    .end local v4           #template:Ljava/lang/CharSequence;
    :cond_2
    move v2, v6

    .line 2173
    goto :goto_0

    .line 2181
    .restart local v2       #needTimeTemplate:Z
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v8, 0x104015f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4       #template:Ljava/lang/CharSequence;
    goto :goto_1

    .line 2184
    .end local v4           #template:Ljava/lang/CharSequence;
    :cond_4
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v7, :cond_5

    iget-object v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2185
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v8, 0x104015e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4       #template:Ljava/lang/CharSequence;
    goto :goto_1

    .line 2191
    .end local v4           #template:Ljava/lang/CharSequence;
    :cond_5
    if-eqz v2, :cond_6

    .line 2192
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v8, 0x1040162

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4       #template:Ljava/lang/CharSequence;
    goto :goto_1

    .line 2195
    .end local v4           #template:Ljava/lang/CharSequence;
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v8, 0x1040161

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4       #template:Ljava/lang/CharSequence;
    goto :goto_1

    :cond_7
    move v0, v6

    .line 2211
    goto :goto_2
.end method

.method private static makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 550
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 552
    .end local p0
    :cond_0
    return-object p0
.end method

.method static newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .locals 3
    .parameter "dialString"
    .parameter "phone"
    .parameter "app"

    .prologue
    .line 289
    const/4 v1, 0x0

    .line 329
    .local v1, ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 332
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .end local v1           #ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 334
    .restart local v1       #ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    .line 335
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    .line 336
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    .line 337
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    .line 338
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    .line 339
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sic:Ljava/lang/String;

    .line 340
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->pwd:Ljava/lang/String;

    .line 341
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    .line 378
    :cond_0
    :goto_0
    return-object v1

    .line 345
    :cond_1
    const-string v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 350
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .end local v1           #ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 351
    .restart local v1       #ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iput-object p0, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    goto :goto_0

    .line 354
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTwoDigitShortCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 356
    const/4 v1, 0x0

    goto :goto_0

    .line 357
    :cond_3
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .end local v1           #ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 368
    .restart local v1       #ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iput-object p0, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method static newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .locals 2
    .parameter "ussdMessge"
    .parameter "phone"
    .parameter "app"

    .prologue
    .line 403
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 405
    .local v0, ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iput-object p0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 406
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 407
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD:Z

    .line 409
    return-object v0
.end method

.method static newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .locals 2
    .parameter "ussdMessage"
    .parameter "isUssdRequest"
    .parameter "phone"
    .parameter "app"

    .prologue
    .line 386
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 388
    .local v0, ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iput-object p0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 389
    iput-boolean p1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdRequest:Z

    .line 392
    if-eqz p1, :cond_0

    .line 393
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD:Z

    .line 394
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 399
    :goto_0
    return-object v0

    .line 396
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0
.end method

.method private onGetClirComplete(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    const v5, 0x104011a

    const v4, 0x1040117

    const/4 v3, 0x0

    .line 1960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1961
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1963
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1964
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1965
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2043
    :goto_0
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 2044
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 2045
    return-void

    .line 1969
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    .line 1972
    .local v0, clirArgs:[I
    const/4 v2, 0x1

    aget v2, v0, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1974
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v3, 0x104011b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1976
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1980
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v3, 0x104011c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1982
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1989
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v3, 0x10400ea

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1990
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1995
    :pswitch_3
    aget v2, v0, v3

    packed-switch v2, :pswitch_data_1

    .line 1998
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2014
    :goto_1
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 2002
    :pswitch_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2006
    :pswitch_5
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v3, 0x1040118

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2019
    :pswitch_6
    aget v2, v0, v3

    packed-switch v2, :pswitch_data_2

    .line 2022
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2038
    :goto_2
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 2026
    :pswitch_7
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v3, 0x1040119

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2030
    :pswitch_8
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1972
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
    .end packed-switch

    .line 1995
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 2019
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private onQueryCfComplete(Landroid/os/AsyncResult;)V
    .locals 13
    .parameter "ar"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2237
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2238
    .local v6, sb:Ljava/lang/StringBuilder;
    const-string v9, "\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2240
    iget-object v9, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_1

    .line 2241
    sget-object v9, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 2242
    iget-object v9, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/android/internal/telephony/CommandException;

    check-cast v9, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 2243
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v9, :cond_0

    .line 2244
    const-string v9, "GSM"

    const-string v10, "FDN_CHECK_FAILURE"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v10, 0x10400ec

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2333
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :goto_0
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 2334
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 2336
    return-void

    .line 2247
    .restart local v0       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v10, 0x104012e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2248
    const-string v9, "\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2249
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2250
    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2251
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2258
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    iget-object v9, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v4, v9

    check-cast v4, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 2260
    .local v4, infos:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v9, v4

    if-nez v9, :cond_4

    .line 2263
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2265
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v10, 0x10400f5

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2268
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v9, :cond_3

    .line 2269
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v12, v10, v11}, Lcom/android/internal/telephony/uicc/IccRecords;->setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 2330
    :cond_2
    :goto_1
    sget-object v9, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 2271
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v9, :cond_2

    .line 2272
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCallForwardingPreference(Z)V

    .line 2273
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v9, v12, v11}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZ)V

    goto :goto_1

    .line 2278
    :cond_4
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2287
    .local v8, tb:Landroid/text/SpannableStringBuilder;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2288
    const-string v9, "\n"

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2290
    const/4 v2, 0x0

    .line 2291
    .local v2, fi_voice:Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v1, 0x0

    .line 2293
    .local v1, fi_video:Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v7, 0x1

    .line 2294
    .local v7, serviceClassMask:I
    :goto_2
    const/16 v9, 0x80

    if-gt v7, v9, :cond_8

    .line 2297
    const/4 v3, 0x0

    .local v3, i:I
    array-length v5, v4

    .local v5, s:I
    :goto_3
    if-ge v3, v5, :cond_7

    .line 2298
    aget-object v9, v4, v3

    iget v9, v9, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v9, v7

    if-eqz v9, :cond_6

    .line 2299
    aget-object v9, v4, v3

    invoke-direct {p0, v9, v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2301
    const-string v9, "\n"

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2303
    if-ne v7, v12, :cond_5

    .line 2304
    aget-object v2, v4, v3

    .line 2306
    :cond_5
    const/16 v9, 0x10

    if-ne v7, v9, :cond_6

    .line 2307
    aget-object v1, v4, v3

    .line 2297
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2295
    :cond_7
    shl-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2327
    .end local v3           #i:I
    .end local v5           #s:I
    :cond_8
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private onQueryComplete(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "ar"

    .prologue
    const v6, 0x10400ea

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2341
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2343
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 2344
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 2354
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2356
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2357
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v3, "43"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2358
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2487
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 2488
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 2489
    return-void

    .line 2359
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2360
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2361
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ja"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2362
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2365
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2364
    :cond_2
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2378
    :cond_3
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    .line 2386
    .local v0, ints:[I
    array-length v2, v0

    if-eqz v2, :cond_c

    .line 2391
    aget v2, v0, v4

    if-nez v2, :cond_6

    .line 2393
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2394
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2395
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ja"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2396
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2399
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v3, "30"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2400
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v3, 0x1040130

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2480
    :goto_2
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 2403
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v3, 0x10400f5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2413
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v3, "43"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2415
    aget v2, v0, v5

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2416
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2418
    aget v2, v0, v4

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->createQueryCallBarringResultMessage(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2441
    :cond_8
    aget v2, v0, v4

    if-ne v2, v5, :cond_b

    .line 2444
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2445
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2446
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ja"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2447
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2450
    :cond_9
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v3, "30"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2451
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v3, 0x104012f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2455
    :cond_a
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v3, 0x10400f3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2462
    :cond_b
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2478
    :cond_c
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method private onSetComplete(Landroid/os/AsyncResult;)V
    .locals 9
    .parameter "ar"

    .prologue
    const v8, 0x104012e

    const v7, 0x10400fa

    const/4 v6, 0x0

    const v5, 0x10400ea

    .line 1603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1604
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1606
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_11

    .line 1607
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1608
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_10

    .line 1609
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 1610
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v3, :cond_8

    .line 1611
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinCommand()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1614
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v4, "05"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v4, "052"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1615
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x10400fb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1618
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 1619
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 1620
    .local v1, pukAttemptsRemaining:[I
    array-length v3, v1

    if-lez v3, :cond_1

    aget v3, v1, v6

    if-ltz v3, :cond_1

    .line 1622
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x1040102

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1624
    aget v3, v1, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1634
    .end local v1           #pukAttemptsRemaining:[I
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1638
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1639
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1641
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1827
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    :goto_1
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 1828
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 1829
    return-void

    .line 1628
    .restart local v0       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1644
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1648
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1649
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1651
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ja"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1652
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1654
    :cond_5
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1657
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v4, "43"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1658
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1659
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1660
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1662
    :cond_7
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1663
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x10400f8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1669
    :cond_8
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v3, :cond_9

    .line 1670
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1672
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x1040100

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1675
    :cond_9
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v3, :cond_a

    .line 1676
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v4, "04"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1677
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x1040103

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1680
    :cond_a
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v3, :cond_b

    .line 1681
    const-string v3, "GSM"

    const-string v4, "FDN_CHECK_FAILURE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x10400ec

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1689
    :cond_b
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1693
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1694
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1695
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1696
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1697
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1698
    :cond_c
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1702
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1703
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1704
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1705
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ja"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1706
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1709
    :goto_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1708
    :cond_d
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1710
    :cond_e
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v4, "43"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1715
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1716
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1717
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1723
    :cond_f
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1736
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_10
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1738
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1739
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1741
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1742
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1743
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1749
    :cond_12
    :goto_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x10400f3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1770
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v4, "31"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1771
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    goto/16 :goto_1

    .line 1745
    :cond_13
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1746
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1747
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1773
    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1774
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1776
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1777
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1778
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1786
    :cond_15
    :goto_5
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x10400f5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1789
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v4, "31"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1790
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    goto/16 :goto_1

    .line 1780
    :cond_16
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1781
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1782
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1797
    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1798
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1800
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1801
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1802
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1806
    :cond_18
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x10400f6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1808
    :cond_19
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isErasure()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1809
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1811
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1812
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1813
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1817
    :cond_1a
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x10400f7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1820
    :cond_1b
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1824
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method static scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "sc"

    .prologue
    .line 795
    if-nez p0, :cond_0

    .line 796
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call barring sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_0
    const-string v0, "33"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    const-string v0, "AO"

    .line 814
    :goto_0
    return-object v0

    .line 801
    :cond_1
    const-string v0, "331"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 802
    const-string v0, "OI"

    goto :goto_0

    .line 803
    :cond_2
    const-string v0, "332"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 804
    const-string v0, "OX"

    goto :goto_0

    .line 805
    :cond_3
    const-string v0, "35"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 806
    const-string v0, "AI"

    goto :goto_0

    .line 807
    :cond_4
    const-string v0, "351"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 808
    const-string v0, "IR"

    goto :goto_0

    .line 809
    :cond_5
    const-string v0, "330"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 810
    const-string v0, "AB"

    goto :goto_0

    .line 811
    :cond_6
    const-string v0, "333"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 812
    const-string v0, "AG"

    goto :goto_0

    .line 813
    :cond_7
    const-string v0, "353"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 814
    const-string v0, "AC"

    goto :goto_0

    .line 816
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call barring sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static scToCallForwardReason(Ljava/lang/String;)I
    .locals 2
    .parameter "sc"

    .prologue
    .line 564
    if-nez p0, :cond_0

    .line 565
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call forward sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_0
    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    const/4 v0, 0x4

    .line 579
    :goto_0
    return v0

    .line 570
    :cond_1
    const-string v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 571
    const/4 v0, 0x0

    goto :goto_0

    .line 572
    :cond_2
    const-string v0, "67"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 573
    const/4 v0, 0x1

    goto :goto_0

    .line 574
    :cond_3
    const-string v0, "62"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 575
    const/4 v0, 0x3

    goto :goto_0

    .line 576
    :cond_4
    const-string v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 577
    const/4 v0, 0x2

    goto :goto_0

    .line 578
    :cond_5
    const-string v0, "004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 579
    const/4 v0, 0x5

    goto :goto_0

    .line 581
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call forward sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private serviceClassString(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "serviceClass"

    .prologue
    .line 2097
    sparse-switch p1, :sswitch_data_0

    .line 2114
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x104014e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2098
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x104013f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2099
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040140

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2100
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040141

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2101
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040142

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2102
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040143

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2103
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040144

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2104
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040145

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2105
    :sswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040146

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2106
    :sswitch_8
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040147

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2107
    :sswitch_9
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040148

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2108
    :sswitch_a
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040149

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2109
    :sswitch_b
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x104014a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2110
    :sswitch_c
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x104014b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 2111
    :sswitch_d
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x104014c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 2112
    :sswitch_e
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x104014d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 2097
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_c
        0x8 -> :sswitch_3
        0xc -> :sswitch_b
        0xd -> :sswitch_a
        0x10 -> :sswitch_4
        0x11 -> :sswitch_e
        0x20 -> :sswitch_5
        0x30 -> :sswitch_d
        0x40 -> :sswitch_6
        0x60 -> :sswitch_9
        0x80 -> :sswitch_7
        0xa0 -> :sswitch_8
    .end sparse-switch
.end method

.method private serviceClassToCFString(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "serviceClass"

    .prologue
    .line 2055
    sparse-switch p1, :sswitch_data_0

    .line 2073
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2057
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040126

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2059
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040127

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2061
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040128

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2063
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040129

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2065
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x104012b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2067
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x104012a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2069
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x104012c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2071
    :sswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x104012d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2055
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
    .end sparse-switch
.end method

.method private serviceModeToCFString(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "reason"

    .prologue
    .line 2082
    packed-switch p1, :pswitch_data_0

    .line 2089
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2083
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040131

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2084
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040132

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2085
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040133

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2086
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040134

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2087
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040135

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2088
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040136

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2082
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static siToServiceClass(Ljava/lang/String;)I
    .locals 4
    .parameter "si"

    .prologue
    .line 587
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 588
    :cond_0
    const/4 v1, 0x0

    .line 616
    :goto_0
    return v1

    .line 591
    :cond_1
    const/16 v1, 0xa

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 593
    .local v0, serviceCode:I
    sparse-switch v0, :sswitch_data_0

    .line 619
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported MMI service code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 594
    :sswitch_0
    const/16 v1, 0xd

    goto :goto_0

    .line 595
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 596
    :sswitch_2
    const/16 v1, 0xc

    goto :goto_0

    .line 597
    :sswitch_3
    const/4 v1, 0x4

    goto :goto_0

    .line 599
    :sswitch_4
    const/16 v1, 0x8

    goto :goto_0

    .line 601
    :sswitch_5
    const/4 v1, 0x5

    goto :goto_0

    .line 609
    :sswitch_6
    const/16 v1, 0x30

    goto :goto_0

    .line 611
    :sswitch_7
    const/16 v1, 0xa0

    goto :goto_0

    .line 612
    :sswitch_8
    const/16 v1, 0x50

    goto :goto_0

    .line 613
    :sswitch_9
    const/16 v1, 0x10

    goto :goto_0

    .line 614
    :sswitch_a
    const/16 v1, 0x20

    goto :goto_0

    .line 615
    :sswitch_b
    const/16 v1, 0x11

    goto :goto_0

    .line 616
    :sswitch_c
    const/16 v1, 0x40

    goto :goto_0

    .line 593
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0x10 -> :sswitch_4
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
        0x15 -> :sswitch_7
        0x16 -> :sswitch_8
        0x18 -> :sswitch_9
        0x19 -> :sswitch_a
        0x1a -> :sswitch_b
        0x63 -> :sswitch_c
    .end sparse-switch
.end method

.method private static siToTime(Ljava/lang/String;)I
    .locals 1
    .parameter "si"

    .prologue
    .line 626
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 627
    :cond_0
    const/4 v0, 0x0

    .line 630
    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_1

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 861
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD:Z

    if-eqz v0, :cond_2

    .line 866
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->cancelPendingUssd(Landroid/os/Message;)V

    goto :goto_0

    .line 877
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto :goto_0
.end method

.method getCLIRMode()I
    .locals 2

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1041
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    const/4 v0, 0x2

    .line 1048
    :goto_0
    return v0

    .line 1043
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1044
    const/4 v0, 0x1

    goto :goto_0

    .line 1048
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2539
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialString:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/MmiCode$State;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    return-object v0
.end method

.method public getUssdCode()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2535
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ussdCode:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 1432
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1508
    :cond_0
    :goto_0
    return-void

    .line 1434
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1436
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1440
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1443
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    .line 1444
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v3, :cond_4

    move v1, v3

    .line 1445
    .local v1, cffEnabled:Z
    :goto_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_1

    .line 1446
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZ)V

    .line 1448
    :cond_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_2

    .line 1449
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->setVideoCallForwardingFlag(IZ)V

    .line 1451
    :cond_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_3

    .line 1452
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1469
    .end local v1           #cffEnabled:Z
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1444
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 1473
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1474
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onGetClirComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1478
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1479
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1483
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1484
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1488
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1490
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1491
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1492
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 1494
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto/16 :goto_0

    .line 1505
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto/16 :goto_0

    .line 1432
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method isActivate()Z
    .locals 2

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCancelable()Z
    .locals 1

    .prologue
    .line 884
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD:Z

    return v0
.end method

.method isDeactivate()Z
    .locals 2

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isErasure()Z
    .locals 2

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isGlobalDevMmi()Z
    .locals 2

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "611"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInterrogate()Z
    .locals 2

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    const-string v1, "*#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMMI()Z
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPendingUSSD()Z
    .locals 1

    .prologue
    .line 1076
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD:Z

    return v0
.end method

.method isPinCommand()Z
    .locals 2

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "042"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "052"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRegister()Z
    .locals 2

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isShortCode()Z
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSsInfo()Z
    .locals 1

    .prologue
    .line 1084
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isSsInfo:Z

    return v0
.end method

.method isTemporaryModeCLIR()Z
    .locals 2

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUssdRequest()Z
    .locals 1

    .prologue
    .line 1080
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdRequest:Z

    return v0
.end method

.method onUssdFinished(Ljava/lang/String;Z)V
    .locals 2
    .parameter "ussdMessage"
    .parameter "isUssdRequest"

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_1

    .line 1342
    if-nez p1, :cond_2

    .line 1343
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400f9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 1349
    :goto_0
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdRequest:Z

    .line 1351
    if-nez p2, :cond_0

    .line 1352
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 1357
    :cond_1
    return-void

    .line 1345
    :cond_2
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method onUssdFinishedError()V
    .locals 3

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_0

    .line 1368
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1381
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400ea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 1383
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Evan] onUssdFinishedError message - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 1386
    :cond_0
    return-void
.end method

.method onUssdFinishedError(I)V
    .locals 4
    .parameter "errorCode"

    .prologue
    const v3, 0x10400ea

    .line 1390
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_1

    .line 1391
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1393
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUssdFinishedError errorCode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    const/16 v0, 0x9e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_2

    .line 1399
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 1408
    :goto_0
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Evan] onUssdFinishedError errorCode message- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 1411
    :cond_1
    return-void

    .line 1404
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method parseSsData(Lcom/android/internal/telephony/gsm/SsData;)V
    .locals 8
    .parameter "ssData"

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 431
    iget v4, p1, Lcom/android/internal/telephony/gsm/SsData;->result:I

    invoke-static {v4}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 432
    .local v1, ex:Lcom/android/internal/telephony/CommandException;
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScStringFromScType(Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    .line 433
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getActionStringFromReqType(Lcom/android/internal/telephony/gsm/SsData$RequestType;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    .line 434
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseSsData sc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmMmiCode$1;->$SwitchMap$com$android$internal$telephony$gsm$SsData$RequestType:[I

    iget-object v5, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 475
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invaid requestType in SSData : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :goto_0
    return-void

    .line 441
    :pswitch_0
    iget v4, p1, Lcom/android/internal/telephony/gsm/SsData;->result:I

    if-nez v4, :cond_1

    iget-object v4, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeUnConditional()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 448
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    sget-object v5, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    if-eq v4, v5, :cond_0

    iget-object v4, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    sget-object v5, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_REGISTRATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    if-ne v4, v5, :cond_2

    :cond_0
    iget v4, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceClass:I

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceClassVoiceorNone(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    .line 452
    .local v0, cffEnabled:Z
    :goto_1
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setVoiceCallForwardingFlag cffEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 454
    .local v2, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v2, :cond_3

    .line 455
    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZ)V

    .line 456
    const-string v3, "GSM"

    const-string/jumbo v4, "setVoiceCallForwardingFlag done from SS Info."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .end local v0           #cffEnabled:Z
    .end local v2           #r:Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    :goto_2
    new-instance v3, Landroid/os/AsyncResult;

    iget-object v4, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v3, v7, v4, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 448
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 458
    .restart local v0       #cffEnabled:Z
    .restart local v2       #r:Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_3
    const-string v3, "GSM"

    const-string/jumbo v4, "setVoiceCallForwardingFlag aborted. sim records is null."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 464
    .end local v0           #cffEnabled:Z
    .end local v2           #r:Lcom/android/internal/telephony/uicc/IccRecords;
    :pswitch_1
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeClir()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 465
    const-string v3, "GSM"

    const-string v4, "CLIR INTERROGATION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v3, Landroid/os/AsyncResult;

    iget-object v4, p1, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    invoke-direct {v3, v7, v4, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onGetClirComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 467
    :cond_4
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeCF()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 468
    const-string v3, "GSM"

    const-string v4, "CALL FORWARD INTERROGATION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    new-instance v3, Landroid/os/AsyncResult;

    iget-object v4, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v3, v7, v4, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 471
    :cond_5
    new-instance v3, Landroid/os/AsyncResult;

    iget-object v4, p1, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    invoke-direct {v3, v7, v4, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method processCode()V
    .locals 24

    .prologue
    .line 1091
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isShortCode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1092
    const-string v3, "GSM"

    const-string v9, "isShortCode"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 1319
    :cond_0
    :goto_0
    return-void

    .line 1095
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1097
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1311
    :catch_0
    move-exception v20

    .line 1312
    .local v20, exc:Ljava/lang/RuntimeException;
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v9, 0x10400ea

    invoke-virtual {v3, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 1317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto :goto_0

    .line 1098
    .end local v20           #exc:Ljava/lang/RuntimeException;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v9, "30"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1099
    const-string v3, "GSM"

    const-string v9, "is CLIP"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v3, v9}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    goto :goto_0

    .line 1104
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1106
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v9, "31"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1107
    const-string v3, "GSM"

    const-string v9, "is CLIR"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x1

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v3, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1118
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x2

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v3, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1128
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v3, v9}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1132
    :cond_7
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1134
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1135
    const-string v3, "GSM"

    const-string v9, "is CF"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    .line 1138
    .local v7, dialingNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v6

    .line 1139
    .local v6, serviceClass:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->scToCallForwardReason(Ljava/lang/String;)I

    move-result v5

    .line 1140
    .local v5, reason:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sic:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToTime(Ljava/lang/String;)I

    move-result v8

    .line 1142
    .local v8, time:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v3, v5, v6, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1149
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1150
    if-eqz v7, :cond_d

    .line 1151
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isCallFwdRegister:Z

    .line 1152
    const/4 v4, 0x3

    .line 1167
    .local v4, cfAction:I
    :goto_1
    const/16 v19, -0x1

    .line 1168
    .local v19, enableDesiredIfCfu:I
    if-eqz v5, :cond_a

    const/4 v3, 0x4

    if-ne v5, v3, :cond_c

    .line 1170
    :cond_a
    const/4 v3, 0x1

    if-eq v4, v3, :cond_b

    const/4 v3, 0x3

    if-ne v4, v3, :cond_12

    :cond_b
    const/16 v19, 0x1

    .line 1173
    :cond_c
    :goto_2
    const-string v3, "GSM"

    const-string v9, "is CF setCallForward"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, p0

    invoke-virtual {v0, v9, v6, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-interface/range {v3 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1154
    .end local v4           #cfAction:I
    .end local v19           #enableDesiredIfCfu:I
    :cond_d
    const/4 v4, 0x1

    .restart local v4       #cfAction:I
    goto :goto_1

    .line 1156
    .end local v4           #cfAction:I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1157
    const/4 v4, 0x0

    .restart local v4       #cfAction:I
    goto :goto_1

    .line 1158
    .end local v4           #cfAction:I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1159
    const/4 v4, 0x3

    .restart local v4       #cfAction:I
    goto :goto_1

    .line 1160
    .end local v4           #cfAction:I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isErasure()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1161
    const/4 v4, 0x4

    .restart local v4       #cfAction:I
    goto :goto_1

    .line 1163
    .end local v4           #cfAction:I
    :cond_11
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v9, "invalid action"

    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1170
    .restart local v4       #cfAction:I
    .restart local v19       #enableDesiredIfCfu:I
    :cond_12
    const/16 v19, 0x0

    goto :goto_2

    .line 1198
    .end local v4           #cfAction:I
    .end local v5           #reason:I
    .end local v6           #serviceClass:I
    .end local v7           #dialingNumber:Ljava/lang/String;
    .end local v8           #time:I
    .end local v19           #enableDesiredIfCfu:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1202
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    .line 1203
    .local v12, password:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v6

    .line 1204
    .restart local v6       #serviceClass:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1206
    .local v10, facility:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v3, v10, v12, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1209
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1210
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v9, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v11

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    move v13, v6

    invoke-interface/range {v9 .. v14}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1213
    :cond_16
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1216
    .end local v6           #serviceClass:I
    .end local v10           #facility:Ljava/lang/String;
    .end local v12           #password:Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v9, "03"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1222
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    .line 1223
    .local v15, oldPwd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sic:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1224
    .local v16, newPwd:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1226
    :cond_18
    const-string v3, "**"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    .line 1228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    if-nez v3, :cond_19

    .line 1230
    const-string v10, "AB"

    .line 1235
    .restart local v10       #facility:Ljava/lang/String;
    :goto_3
    const-string v3, "GSM"

    const-string v9, "changeBarringPassword"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v13, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->pwd:Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    move-object v14, v10

    invoke-interface/range {v13 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1232
    .end local v10           #facility:Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .restart local v10       #facility:Ljava/lang/String;
    goto :goto_3

    .line 1248
    .end local v10           #facility:Ljava/lang/String;
    :cond_1a
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1251
    .end local v15           #oldPwd:Ljava/lang/String;
    .end local v16           #newPwd:Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v9, "43"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v6

    .line 1255
    .restart local v6       #serviceClass:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1256
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v9

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v3, v9, v6, v11}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1258
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v3, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1262
    :cond_1e
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1264
    .end local v6           #serviceClass:I
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinCommand()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1269
    .local v22, oldPinOrPuk:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1270
    .local v21, newPin:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v23

    .line 1271
    .local v23, pinLen:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sic:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 1274
    const v3, 0x10400fc

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_0

    .line 1275
    :cond_20
    const/4 v3, 0x4

    move/from16 v0, v23

    if-lt v0, v3, :cond_21

    const/16 v3, 0x8

    move/from16 v0, v23

    if-le v0, v3, :cond_22

    .line 1277
    :cond_21
    const v3, 0x10400fd

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_0

    .line 1278
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v9, "04"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v3

    sget-object v9, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v3, v9, :cond_23

    .line 1281
    const v3, 0x10400ff

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_0

    .line 1284
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v9, "04"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v3, v0, v1, v9}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1287
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v9, "042"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v3, v0, v1, v9}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1290
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v9, "05"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v3, v0, v1, v9}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1293
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v9, "052"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v3, v0, v1, v9}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1299
    :cond_27
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1301
    .end local v21           #newPin:Ljava/lang/String;
    .end local v22           #oldPinOrPuk:Ljava/lang/String;
    .end local v23           #pinLen:I
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeUnsupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1302
    const-string v3, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported MMI code: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v9, 0x10400eb

    invoke-virtual {v3, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 1305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto/16 :goto_0

    .line 1306
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    if-eqz v3, :cond_2a

    .line 1307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1309
    :cond_2a
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method processSsData(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 415
    const-string v2, "GSM"

    const-string v3, "In processSsData"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isSsInfo:Z

    .line 419
    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/SsData;

    .line 420
    .local v1, ssData:Lcom/android/internal/telephony/gsm/SsData;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->parseSsData(Lcom/android/internal/telephony/gsm/SsData;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 426
    .end local v1           #ssData:Lcom/android/internal/telephony/gsm/SsData;
    :goto_0
    return-void

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, ex:Ljava/lang/ClassCastException;
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in parsing SS Data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    .end local v0           #ex:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 424
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in parsing SS Data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method sendUssd(Ljava/lang/String;)V
    .locals 2
    .parameter "ussdMessage"

    .prologue
    .line 1416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD:Z

    .line 1423
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    .line 1425
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2552
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GsmMmiCode {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2554
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2555
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2556
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2557
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sia="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2558
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sib="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2559
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sic:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2560
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " poundString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2561
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " dialingNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2562
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->pwd:Ljava/lang/String;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pwd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->pwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2563
    :cond_7
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2564
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
