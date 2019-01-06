.class final Lcom/android/server/HandyMode$8;
.super Ljava/lang/Object;
.source "HandyMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HandyMode;->alertToEnter(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$newMode:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/HandyMode$8;->val$newMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget v0, p0, Lcom/android/server/HandyMode$8;->val$newMode:I

    invoke-static {v0}, Lcom/android/server/HandyMode;->changeMode(I)V

    return-void
.end method
