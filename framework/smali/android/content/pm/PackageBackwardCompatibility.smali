.class public Landroid/content/pm/PackageBackwardCompatibility;
.super Ljava/lang/Object;
.source "PackageBackwardCompatibility.java"


# static fields
.field private static final ANDROID_TEST_MOCK:Ljava/lang/String; = "android.test.mock"

.field private static final ANDROID_TEST_RUNNER:Ljava/lang/String; = "android.test.runner"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static modifySharedLibraries(Landroid/content/pm/PackageParser$Package;)V
    .registers 5

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/content/pm/PackageBackwardCompatibility;->orgApacheHttpLegacy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v2}, Landroid/content/pm/PackageBackwardCompatibility;->orgApacheHttpLegacy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    const-string/jumbo v3, "android.test.mock"

    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    const-string/jumbo v3, "android.test.mock"

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    :goto_1c
    const-string/jumbo v3, "android.test.runner"

    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    xor-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2f

    const-string/jumbo v3, "android.test.mock"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    const-string/jumbo v3, "android.test.runner"

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    xor-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_42

    const-string/jumbo v3, "android.test.mock"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    return-void

    :cond_47
    const/4 v0, 0x1

    goto :goto_1c
.end method

.method private static orgApacheHttpLegacy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "org.apache.http.legacy"

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
