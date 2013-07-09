.class public interface abstract Lcom/android/internal/telephony/TelephonyProperties;
.super Ljava/lang/Object;
.source "TelephonyProperties.java"


# static fields
.field public static final CALLS_ON_IMS_ENABLED_PROPERTY:Ljava/lang/String; = "persist.radio.calls.on.ims"

.field public static final CURRENT_ACTIVE_PHONE:Ljava/lang/String; = "gsm.current.phone-type"

.field public static final PROPERTY_AIRPLAIN_CDMA:Ljava/lang/String; = "gsm.airplain.cdma"

.field public static final PROPERTY_AIRPLAIN_GSM:Ljava/lang/String; = "gsm.airplain.gsm"

.field public static final PROPERTY_ALPHA_USRCNF:Ljava/lang/String; = "persist.atel.noalpha.usrcnf"

.field public static final PROPERTY_APN_SIM_OPERATOR_NUMERIC:Ljava/lang/String; = "gsm.apn.sim.operator.numeric"

.field public static final PROPERTY_BASEBAND:Ljava/lang/String; = "ro.baseband"

.field public static final PROPERTY_BASEBAND_VERSION:Ljava/lang/String; = "gsm.version.baseband"

.field public static final PROPERTY_CALL_DEFAULT_SIM_ID:Ljava/lang/String; = "persist.radio.calldefault.simid"

.field public static final PROPERTY_CALL_RING_DELAY:Ljava/lang/String; = "ro.telephony.call_ring.delay"

.field public static final PROPERTY_CDMA_IPPROTOCOL:Ljava/lang/String; = "persist.telephony.cdma.protocol"

.field public static final PROPERTY_CDMA_MSG_ID:Ljava/lang/String; = "persist.radio.cdma.msgid"

.field public static final PROPERTY_CDMA_ROAMING_IPPROTOCOL:Ljava/lang/String; = "persist.telephony.cdma.rproto"

.field public static final PROPERTY_CURRENT_BOOT_MODEM:Ljava/lang/String; = "persist.radio.boot.modem"

.field public static final PROPERTY_DATA_NETWORK_TYPE:Ljava/lang/String; = "gsm.network.type"

.field public static final PROPERTY_DEFAULT_SUBSCRIPTION:Ljava/lang/String; = "persist.default.subscription"

.field public static final PROPERTY_DISABLE_CALL:Ljava/lang/String; = "ro.telephony.disable-call"

.field public static final PROPERTY_DUALMODE_TEST:Ljava/lang/String; = "persist.radio.dualmode.test"

.field public static final PROPERTY_ECM_EXIT_TIMER:Ljava/lang/String; = "ro.cdma.ecmexittimer"

.field public static final PROPERTY_EONS_ENABLED:Ljava/lang/String; = "persist.eons.enabled"

.field public static final PROPERTY_ICC_OPERATOR_ALPHA:Ljava/lang/String; = "gsm.sim.operator.alpha"

.field public static final PROPERTY_ICC_OPERATOR_ISO_COUNTRY:Ljava/lang/String; = "gsm.sim.operator.iso-country"

.field public static final PROPERTY_ICC_OPERATOR_NUMERIC:Ljava/lang/String; = "gsm.sim.operator.numeric"

.field public static final PROPERTY_IDP_STRING:Ljava/lang/String; = "ro.cdma.idpstring"

.field public static final PROPERTY_IGNORE_NITZ:Ljava/lang/String; = "telephony.test.ignore.nitz"

.field public static final PROPERTY_INE911:Ljava/lang/String; = "ril.cdma.ine911"

.field public static final PROPERTY_INE911_AIRPLANEMODE:Ljava/lang/String; = "ril.gsm.ine911.airplanemode"

.field public static final PROPERTY_INECM_MODE:Ljava/lang/String; = "ril.cdma.inecmmode"

.field public static final PROPERTY_LTE_ON_CDMA_DEVICE:Ljava/lang/String; = "telephony.lteOnCdmaDevice"

.field public static final PROPERTY_LTE_ON_CDMA_PRODUCT_TYPE:Ljava/lang/String; = "telephony.lteOnCdmaProductType"

.field public static final PROPERTY_MULTI_RILD:Ljava/lang/String; = "ro.multi.rild"

.field public static final PROPERTY_MULTI_SIM_CONFIG:Ljava/lang/String; = "persist.multisim.config"

.field public static final PROPERTY_MULTI_SIM_ENABLED:Ljava/lang/String; = "persist.dsds.enabled"

.field public static final PROPERTY_OMH_ENABLED:Ljava/lang/String; = "persist.omh.enabled"

.field public static final PROPERTY_OOS_IS_DISCONNECT:Ljava/lang/String; = "persist.telephony.oosisdc"

.field public static final PROPERTY_OPERATOR_ALPHA:Ljava/lang/String; = "gsm.operator.alpha"

.field public static final PROPERTY_OPERATOR_ISLTEROAMING:Ljava/lang/String; = "gsm.operator.islteroaming"

.field public static final PROPERTY_OPERATOR_ISMANUAL:Ljava/lang/String; = "operator.ismanual"

.field public static final PROPERTY_OPERATOR_ISO_COUNTRY:Ljava/lang/String; = "gsm.operator.iso-country"

.field public static final PROPERTY_OPERATOR_ISROAMING:Ljava/lang/String; = "gsm.operator.isroaming"

.field public static final PROPERTY_OPERATOR_ISROAMING_CDMA:Ljava/lang/String; = "gsm.operator.isroaming.cdma"

.field public static final PROPERTY_OPERATOR_NUMERIC:Ljava/lang/String; = "gsm.operator.numeric"

.field public static final PROPERTY_OPERATOR_NUMERIC_REAL:Ljava/lang/String; = "gsm.operator.numeric.real"

.field public static final PROPERTY_OTASP_NUM_SCHEMA:Ljava/lang/String; = "ro.cdma.otaspnumschema"

.field public static final PROPERTY_RESET_ON_RADIO_TECH_CHANGE:Ljava/lang/String; = "persist.radio.reset_on_switch"

.field public static final PROPERTY_RIL_IMPL:Ljava/lang/String; = "gsm.version.ril-impl"

.field public static final PROPERTY_RIL_SENDS_MULTIPLE_CALL_RING:Ljava/lang/String; = "ro.telephony.call_ring.multiple"

.field public static final PROPERTY_SIM_MSISDN:Ljava/lang/String; = "gsm.sim.msisdn"

.field public static final PROPERTY_SIM_STATE:Ljava/lang/String; = "gsm.sim.state"

.field public static final PROPERTY_SIM_SUB_STATE:Ljava/lang/String; = "gsm.sim.sub.state"

.field public static final PROPERTY_SMS_GCF_MODE:Ljava/lang/String; = "ril.sms.gcf-mode"

.field public static final PROPERTY_SMS_REASSEMBLY:Ljava/lang/String; = "ril.sms.reassembly"

.field public static final PROPERTY_SMS_RECEIVE:Ljava/lang/String; = "telephony.sms.receive"

.field public static final PROPERTY_SMS_RETRY_DELAY:Ljava/lang/String; = "persist.radio.sms_retry_delay"

.field public static final PROPERTY_SMS_SEND:Ljava/lang/String; = "telephony.sms.send"

.field public static final PROPERTY_SVDATA:Ljava/lang/String; = "ro.ril.svlte1x"

.field public static final PROPERTY_TEST_CSIM:Ljava/lang/String; = "persist.radio.test-csim"

.field public static final PROPERTY_TETHERING_TEST_MODE:Ljava/lang/String; = "ril.tethering.test_mode"

.field public static final PROPERTY_VOICE_MODEM_INDEX:Ljava/lang/String; = "persist.radio.voice.modem.index"

.field public static final PROPERTY_WAKE_LOCK_TIMEOUT:Ljava/lang/String; = "ro.ril.wake_lock_timeout"

.field public static final SET_BOOTING_PHONE:Ljava/lang/String; = "gsm.booting.phone"

.field public static final SMS_SYNCHRONOUS_SENDING:Ljava/lang/String; = "persist.radio.sms_sync_sending"
