.class Lcom/android/keyguard/AODNotificationColor$ColorItem;
.super Ljava/lang/Object;
.source "AODNotificationColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/AODNotificationColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ColorItem"
.end annotation


# instance fields
.field public left:I

.field public right:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/keyguard/AODNotificationColor$ColorItem;->left:I

    iput p2, p0, Lcom/android/keyguard/AODNotificationColor$ColorItem;->right:I

    return-void
.end method
