.class final synthetic Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$4;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$4;->-$f2:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/autofill/ui/PendingUi;

    iget-object v2, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$4;->-$f3:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iget-boolean v3, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$4;->-$f0:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$-com_android_server_autofill_ui_AutoFillUI_12732(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$4;->-$f0:Z

    iput-object p2, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$4;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$4;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$4;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$4;->$m$0()V

    return-void
.end method
