.class final synthetic Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;

.field private final synthetic -$f5:Ljava/lang/Object;

.field private final synthetic -$f6:Ljava/lang/Object;

.field private final synthetic -$f7:Ljava/lang/Object;

.field private final synthetic -$f8:Ljava/lang/Object;

.field private final synthetic -$f9:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$2;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iget-object v2, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$2;->-$f2:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/autofill/ui/PendingUi;

    iget-object v3, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$2;->-$f3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$2;->-$f4:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$2;->-$f5:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$2;->-$f6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$2;->-$f7:Ljava/lang/Object;

    check-cast v7, Landroid/service/autofill/SaveInfo;

    iget-object v8, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$2;->-$f8:Ljava/lang/Object;

    check-cast v8, Landroid/service/autofill/ValueFinder;

    iget-object v9, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$2;->-$f9:Ljava/lang/Object;

    check-cast v9, Landroid/metrics/LogMaker;

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$-com_android_server_autofill_ui_AutoFillUI_9969(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$2;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$2;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$2;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$2;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$2;->-$f4:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$2;->-$f5:Ljava/lang/Object;

    iput-object p7, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$2;->-$f6:Ljava/lang/Object;

    iput-object p8, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$2;->-$f7:Ljava/lang/Object;

    iput-object p9, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$2;->-$f8:Ljava/lang/Object;

    iput-object p10, p0, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$2;->-$f9:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/ui/-$Lambda$CJSLmckRMp4fHqnN2ZN5WFtAFP8$2;->$m$0()V

    return-void
.end method
