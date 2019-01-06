.class Lcom/android/server/location/GpsLocationProviderInjector;
.super Ljava/lang/Object;
.source "GpsLocationProviderInjector.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static appendUidExtra(Landroid/os/WorkSource;ZLandroid/content/Intent;)V
    .registers 6

    const/4 v2, 0x0

    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Landroid/os/WorkSource;->size()I

    move-result v0

    if-lez v0, :cond_1d

    const-string/jumbo v0, "android.intent.extra.UID"

    invoke-virtual {p0, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.PACKAGES"

    invoke-virtual {p0, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1d
    return-void
.end method
