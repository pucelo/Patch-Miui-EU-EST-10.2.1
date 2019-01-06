.class final synthetic Landroid/app/-$Lambda$zUW-hE_1K7BzT3PNwqZSM6y8x_4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:I

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 6

    iget-object v0, p0, Landroid/app/-$Lambda$zUW-hE_1K7BzT3PNwqZSM6y8x_4$1;->-$f2:Ljava/lang/Object;

    check-cast v0, Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/-$Lambda$zUW-hE_1K7BzT3PNwqZSM6y8x_4$1;->-$f3:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v2, p0, Landroid/app/-$Lambda$zUW-hE_1K7BzT3PNwqZSM6y8x_4$1;->-$f4:Ljava/lang/Object;

    check-cast v2, Landroid/app/WallpaperColors;

    iget v3, p0, Landroid/app/-$Lambda$zUW-hE_1K7BzT3PNwqZSM6y8x_4$1;->-$f0:I

    iget v4, p0, Landroid/app/-$Lambda$zUW-hE_1K7BzT3PNwqZSM6y8x_4$1;->-$f1:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->lambda$-android_app_WallpaperManager$Globals_13333(Landroid/util/Pair;Landroid/app/WallpaperColors;II)V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/-$Lambda$zUW-hE_1K7BzT3PNwqZSM6y8x_4$1;->-$f0:I

    iput p2, p0, Landroid/app/-$Lambda$zUW-hE_1K7BzT3PNwqZSM6y8x_4$1;->-$f1:I

    iput-object p3, p0, Landroid/app/-$Lambda$zUW-hE_1K7BzT3PNwqZSM6y8x_4$1;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Landroid/app/-$Lambda$zUW-hE_1K7BzT3PNwqZSM6y8x_4$1;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Landroid/app/-$Lambda$zUW-hE_1K7BzT3PNwqZSM6y8x_4$1;->-$f4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Landroid/app/-$Lambda$zUW-hE_1K7BzT3PNwqZSM6y8x_4$1;->$m$0()V

    return-void
.end method
