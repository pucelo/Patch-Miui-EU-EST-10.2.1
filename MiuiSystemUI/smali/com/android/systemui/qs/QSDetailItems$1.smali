.class Lcom/android/systemui/qs/QSDetailItems$1;
.super Ljava/lang/Object;
.source "QSDetailItems.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetailItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetailItems;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetailItems;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems$1;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$1;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailItems;->-get2(Lcom/android/systemui/qs/QSDetailItems;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems$1;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v1}, Lcom/android/systemui/qs/QSDetailItems;->-get4(Lcom/android/systemui/qs/QSDetailItems;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$1;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailItems;->-get3(Lcom/android/systemui/qs/QSDetailItems;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems$1;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v1}, Lcom/android/systemui/qs/QSDetailItems;->-get8(Lcom/android/systemui/qs/QSDetailItems;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
