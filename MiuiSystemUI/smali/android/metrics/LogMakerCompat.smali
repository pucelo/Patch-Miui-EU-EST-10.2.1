.class public Landroid/metrics/LogMakerCompat;
.super Ljava/lang/Object;
.source "LogMakerCompat.java"


# instance fields
.field private mLogMaker:Landroid/metrics/LogMaker;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    iput-object v0, p0, Landroid/metrics/LogMakerCompat;->mLogMaker:Landroid/metrics/LogMaker;

    return-void
.end method

.method public static write(Landroid/content/Context;Lcom/android/internal/logging/MetricsLogger;Landroid/metrics/LogMakerCompat;)V
    .locals 1

    iget-object v0, p2, Landroid/metrics/LogMakerCompat;->mLogMaker:Landroid/metrics/LogMaker;

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method


# virtual methods
.method public addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMakerCompat;
    .locals 1

    iget-object v0, p0, Landroid/metrics/LogMakerCompat;->mLogMaker:Landroid/metrics/LogMaker;

    invoke-virtual {v0, p1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    return-object p0
.end method

.method public setCategory(I)Landroid/metrics/LogMakerCompat;
    .locals 1

    iget-object v0, p0, Landroid/metrics/LogMakerCompat;->mLogMaker:Landroid/metrics/LogMaker;

    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    return-object p0
.end method

.method public setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMakerCompat;
    .locals 1

    iget-object v0, p0, Landroid/metrics/LogMakerCompat;->mLogMaker:Landroid/metrics/LogMaker;

    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    return-object p0
.end method

.method public setSubtype(I)Landroid/metrics/LogMakerCompat;
    .locals 1

    iget-object v0, p0, Landroid/metrics/LogMakerCompat;->mLogMaker:Landroid/metrics/LogMaker;

    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    return-object p0
.end method

.method public setType(I)Landroid/metrics/LogMakerCompat;
    .locals 1

    iget-object v0, p0, Landroid/metrics/LogMakerCompat;->mLogMaker:Landroid/metrics/LogMaker;

    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    return-object p0
.end method
