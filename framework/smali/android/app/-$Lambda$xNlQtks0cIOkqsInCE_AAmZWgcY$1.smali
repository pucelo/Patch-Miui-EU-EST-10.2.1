.class final synthetic Landroid/app/-$Lambda$xNlQtks0cIOkqsInCE_AAmZWgcY$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic -$f0:F


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Landroid/app/-$Lambda$xNlQtks0cIOkqsInCE_AAmZWgcY$1;->-$f0:F

    check-cast p1, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-static {v0, p1}, Landroid/app/WallpaperColors;->lambda$-android_app_WallpaperColors_6256(FLcom/android/internal/graphics/palette/Palette$Swatch;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(F)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/-$Lambda$xNlQtks0cIOkqsInCE_AAmZWgcY$1;->-$f0:F

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/-$Lambda$xNlQtks0cIOkqsInCE_AAmZWgcY$1;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
