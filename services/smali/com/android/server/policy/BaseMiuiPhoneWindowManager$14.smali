.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

.field final synthetic val$msg:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iput-object p2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->val$msg:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get7(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v10

    if-nez v10, :cond_11c

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    new-instance v11, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14$1;

    iget-object v12, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v12, v12, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const v13, 0x110d0007

    invoke-direct {v11, p0, v12, v13}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14$1;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;Landroid/content/Context;I)V

    invoke-static {v10, v11}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set8(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get7(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x11030005

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get7(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get7(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x7e5

    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get7(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x502

    invoke-virtual {v10, v11}, Landroid/view/Window;->addFlags(I)V

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get7(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/view/Window;->setDimAmount(F)V

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get7(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v10, 0x5

    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get7(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get7(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get7(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    const v10, 0x110c001b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string/jumbo v10, "beryllium"

    sget-object v11, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c7

    const-string/jumbo v10, "ro.boot.hwc"

    const-string/jumbo v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v10, "INDIA"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_14e

    const v10, 0x11020006

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_c7
    :goto_c7
    iget-object v11, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const v10, 0x110c001d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    invoke-static {v11, v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set1(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get2(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v11, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v11, v11, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x11060010

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set2(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_11c

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    if-lez v10, :cond_11c

    iget-object v11, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const v10, 0x110c001c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-static {v11, v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get4(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_11c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->val$msg:Ljava/lang/CharSequence;

    if-eqz v10, :cond_15f

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->val$msg:Ljava/lang/CharSequence;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "[^0-9]"

    const-string/jumbo v12, ","

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x0

    array-length v12, v11

    :goto_13e
    if-ge v10, v12, :cond_15f

    aget-object v6, v11, v10

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_14b

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14b
    add-int/lit8 v10, v10, 0x1

    goto :goto_13e

    :cond_14e
    const-string/jumbo v10, "GLOBAL"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c7

    const v10, 0x11020005

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c7

    :cond_15f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1e7

    const/4 v10, 0x0

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v10, 0x1

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-le v5, v8, :cond_181

    move v7, v5

    move v5, v8

    move v8, v7

    :cond_181
    const/4 v10, 0x3

    if-le v8, v10, :cond_1e7

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get2(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get2(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get2(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get4(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;

    move-result-object v10

    if-eqz v10, :cond_1e7

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1e7

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get4(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    mul-int/2addr v10, v5

    div-int v4, v10, v8

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    if-lt v4, v10, :cond_1d6

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v4, v10, -0x1

    :cond_1d6
    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get4(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v11}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1e7
    return-void
.end method
