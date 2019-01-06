.class Lcom/android/server/policy/LegacyGlobalActions$2;
.super Landroid/telephony/PhoneStateListener;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$2;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$2;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get9(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_33

    const/4 v0, 0x1

    :goto_11
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$2;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    if-eqz v0, :cond_35

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    :goto_17
    invoke-static {v2, v1}, Lcom/android/server/policy/LegacyGlobalActions;->-set0(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$2;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get1(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$2;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/LegacyGlobalActions;->-get2(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;)V

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$2;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get0(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->notifyDataSetChanged()V

    return-void

    :cond_33
    const/4 v0, 0x0

    goto :goto_11

    :cond_35
    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    goto :goto_17
.end method
