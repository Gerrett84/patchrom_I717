.class Lcom/movial/ipphone/WifiCallSwitchPreference$3;
.super Ljava/lang/Object;
.source "WifiCallSwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/movial/ipphone/WifiCallSwitchPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/WifiCallSwitchPreference;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/WifiCallSwitchPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/movial/ipphone/WifiCallSwitchPreference$3;->this$0:Lcom/movial/ipphone/WifiCallSwitchPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference$3;->this$0:Lcom/movial/ipphone/WifiCallSwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #calls: Lcom/movial/ipphone/WifiCallSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcom/movial/ipphone/WifiCallSwitchPreference;->access$100(Lcom/movial/ipphone/WifiCallSwitchPreference;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 138
    :goto_1
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference$3;->this$0:Lcom/movial/ipphone/WifiCallSwitchPreference;

    invoke-virtual {v0, p2}, Lcom/movial/ipphone/WifiCallSwitchPreference;->setChecked(Z)V

    .line 137
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference$3;->this$0:Lcom/movial/ipphone/WifiCallSwitchPreference;

    invoke-virtual {v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->onSwitchClicked()V

    goto :goto_1
.end method
