.class public Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/smartcover/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBinder:Lcom/android/keyguard/smartcover/ContentProviderBinder;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/smartcover/ContentProviderBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;->mBinder:Lcom/android/keyguard/smartcover/ContentProviderBinder;

    return-void
.end method


# virtual methods
.method public setColumns([Ljava/lang/String;)Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;->mBinder:Lcom/android/keyguard/smartcover/ContentProviderBinder;

    iput-object p1, v0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    return-object p0
.end method

.method public setCountName(Ljava/lang/String;)Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;->mBinder:Lcom/android/keyguard/smartcover/ContentProviderBinder;

    iput-object p1, v0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mCountName:Ljava/lang/String;

    return-object p0
.end method

.method public setWhere(Ljava/lang/String;)Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;->mBinder:Lcom/android/keyguard/smartcover/ContentProviderBinder;

    iput-object p1, v0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mWhere:Ljava/lang/String;

    return-object p0
.end method
