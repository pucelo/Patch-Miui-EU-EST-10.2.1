.class Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver$1;
.super Ljava/lang/Object;
.source "MiuiVolumeDialogImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver$1;->this$1:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
