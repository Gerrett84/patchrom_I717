.class public Lcom/movial/ipphone/WifiCallSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "WifiCallSwitchPreference.java"


# static fields
.field private static final EVENT_IMS_WIFI_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiCallSwitchPreference"


# instance fields
.field private mCellOnly:Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIPManager:Lcom/movial/ipphone/IPManager;

.field private mIPStateListener:Lcom/movial/ipphone/IPStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 108
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v0, Lcom/movial/ipphone/WifiCallSwitchPreference$1;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/WifiCallSwitchPreference$1;-><init>(Lcom/movial/ipphone/WifiCallSwitchPreference;)V

    iput-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mIPStateListener:Lcom/movial/ipphone/IPStateListener;

    .line 91
    new-instance v0, Lcom/movial/ipphone/WifiCallSwitchPreference$2;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/WifiCallSwitchPreference$2;-><init>(Lcom/movial/ipphone/WifiCallSwitchPreference;)V

    iput-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mHandler:Landroid/os/Handler;

    .line 113
    iput-object p1, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    .line 114
    new-instance v0, Lcom/movial/ipphone/IPManager;

    invoke-direct {v0, p1}, Lcom/movial/ipphone/IPManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mIPManager:Lcom/movial/ipphone/IPManager;

    .line 116
    const-string v0, "On"

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 117
    const-string v0, "Off"

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 118
    const-string v0, "Wi-Fi Calling"

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/movial/ipphone/WifiCallSwitchPreference;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/movial/ipphone/WifiCallSwitchPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/movial/ipphone/WifiCallSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/movial/ipphone/WifiCallSwitchPreference;)Lcom/movial/ipphone/IPStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mIPStateListener:Lcom/movial/ipphone/IPStateListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/movial/ipphone/WifiCallSwitchPreference;)Lcom/movial/ipphone/IPManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mIPManager:Lcom/movial/ipphone/IPManager;

    return-object v0
.end method

.method private registerToIPRegistry(Z)V
    .locals 1
    .parameter "register"

    .prologue
    .line 173
    new-instance v0, Lcom/movial/ipphone/WifiCallSwitchPreference$4;

    invoke-direct {v0, p0, p1}, Lcom/movial/ipphone/WifiCallSwitchPreference$4;-><init>(Lcom/movial/ipphone/WifiCallSwitchPreference;Z)V

    .line 185
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 186
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 125
    const v2, 0x10203e9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, checkableView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    .line 127
    instance-of v2, v0, Landroid/widget/Switch;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 128
    check-cast v1, Landroid/widget/Switch;

    .line 129
    .local v1, switchView:Landroid/widget/Switch;
    new-instance v2, Lcom/movial/ipphone/WifiCallSwitchPreference$3;

    invoke-direct {v2, p0}, Lcom/movial/ipphone/WifiCallSwitchPreference$3;-><init>(Lcom/movial/ipphone/WifiCallSwitchPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 142
    .end local v1           #switchView:Landroid/widget/Switch;
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 146
    invoke-super {p0}, Landroid/preference/SwitchPreference;->onClick()V

    .line 147
    const-string v0, "WifiCallSwitchPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-boolean v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mCellOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->setChecked(Z)V

    .line 150
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSwitchClicked()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    const-string v0, "WifiCallSwitchPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSwitchClicked. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0, v2}, Lcom/movial/ipphone/WifiCallSwitchPreference;->setEnabled(Z)V

    .line 156
    invoke-virtual {p0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mCellOnly:Z

    .line 157
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "CELL_ONLY"

    iget-boolean v4, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mCellOnly:Z

    invoke-static {v0, v3, v4}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 158
    iget-boolean v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mCellOnly:Z

    if-nez v0, :cond_1

    :goto_1
    invoke-direct {p0, v1}, Lcom/movial/ipphone/WifiCallSwitchPreference;->registerToIPRegistry(Z)V

    .line 159
    return-void

    :cond_0
    move v0, v2

    .line 156
    goto :goto_0

    :cond_1
    move v1, v2

    .line 158
    goto :goto_1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->registerToIPRegistry(Z)V

    .line 170
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 162
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "CELL_ONLY"

    invoke-static {v0, v3, v1}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mCellOnly:Z

    .line 163
    iget-boolean v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mCellOnly:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->setChecked(Z)V

    .line 164
    iget-boolean v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mCellOnly:Z

    if-eqz v0, :cond_0

    const-string v0, "Disabled"

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 165
    :cond_0
    iget-boolean v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mCellOnly:Z

    if-nez v0, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/movial/ipphone/WifiCallSwitchPreference;->registerToIPRegistry(Z)V

    .line 166
    return-void

    :cond_1
    move v0, v2

    .line 163
    goto :goto_0

    :cond_2
    move v1, v2

    .line 165
    goto :goto_1
.end method
