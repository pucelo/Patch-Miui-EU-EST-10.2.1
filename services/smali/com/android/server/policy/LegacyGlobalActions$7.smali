.class Lcom/android/server/policy/LegacyGlobalActions$7;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions;->createDialog()Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;
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

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$7;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$7;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get0(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/policy/LegacyGlobalActions$LongPressAction;

    if-eqz v1, :cond_15

    check-cast v0, Lcom/android/server/policy/LegacyGlobalActions$LongPressAction;

    invoke-interface {v0}, Lcom/android/server/policy/LegacyGlobalActions$LongPressAction;->onLongPress()Z

    move-result v1

    return v1

    :cond_15
    const/4 v1, 0x0

    return v1
.end method
