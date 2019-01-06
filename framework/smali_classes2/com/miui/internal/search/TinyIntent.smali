.class public Lcom/miui/internal/search/TinyIntent;
.super Ljava/lang/Object;
.source "TinyIntent.java"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mComponent:Landroid/content/ComponentName;

.field private mData:Landroid/net/Uri;

.field private mExtras:Landroid/os/Bundle;

.field private mPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mAction:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mData:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/internal/search/TinyIntent;->setAction(Ljava/lang/String;)Lcom/miui/internal/search/TinyIntent;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v7, "intent_action"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "intent_package"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "intent_class"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "intent_extra"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string/jumbo v7, "intent_data"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2f

    invoke-virtual {p0, v0}, Lcom/miui/internal/search/TinyIntent;->setAction(Ljava/lang/String;)Lcom/miui/internal/search/TinyIntent;

    :cond_2f
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_43

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_64

    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v6, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/miui/internal/search/TinyIntent;->setComponent(Landroid/content/ComponentName;)Lcom/miui/internal/search/TinyIntent;

    :cond_43
    :goto_43
    if-eqz v3, :cond_68

    const/4 v4, 0x0

    :goto_46
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_68

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "value"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/miui/internal/search/TinyIntent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/miui/internal/search/TinyIntent;

    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    :cond_64
    invoke-virtual {p0, v6}, Lcom/miui/internal/search/TinyIntent;->setPackage(Ljava/lang/String;)Lcom/miui/internal/search/TinyIntent;

    goto :goto_43

    :cond_68
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_75

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/miui/internal/search/TinyIntent;->setData(Landroid/net/Uri;)V

    :cond_75
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getData()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mData:Landroid/net/Uri;

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_c

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :cond_c
    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public putExtra(Ljava/lang/String;I)Lcom/miui/internal/search/TinyIntent;
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Bundle;)Lcom/miui/internal/search/TinyIntent;
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/miui/internal/search/TinyIntent;
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Z)Lcom/miui/internal/search/TinyIntent;
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public putExtras(Landroid/os/Bundle;)Lcom/miui/internal/search/TinyIntent;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public setAction(Ljava/lang/String;)Lcom/miui/internal/search/TinyIntent;
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/search/TinyIntent;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public setClassName(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/internal/search/TinyIntent;
    .registers 4

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setComponent(Landroid/content/ComponentName;)Lcom/miui/internal/search/TinyIntent;
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/search/TinyIntent;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setData(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/search/TinyIntent;->mData:Landroid/net/Uri;

    return-void
.end method

.method public setPackage(Ljava/lang/String;)Lcom/miui/internal/search/TinyIntent;
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/search/TinyIntent;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public toIntent()Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mAction:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_12
    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_24
    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mData:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_2d
    return-object v0

    :cond_2e
    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1b
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, p0, Lcom/miui/internal/search/TinyIntent;->mAction:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string/jumbo v4, "intent_action"

    iget-object v5, p0, Lcom/miui/internal/search/TinyIntent;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_15
    iget-object v4, p0, Lcom/miui/internal/search/TinyIntent;->mComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_7b

    const-string/jumbo v4, "intent_package"

    iget-object v5, p0, Lcom/miui/internal/search/TinyIntent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "intent_class"

    iget-object v5, p0, Lcom/miui/internal/search/TinyIntent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_31
    :goto_31
    iget-object v4, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    if-eqz v4, :cond_8e

    iget-object v4, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8e

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v4, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "value"

    iget-object v6, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_52

    :cond_7b
    iget-object v4, p0, Lcom/miui/internal/search/TinyIntent;->mPackage:Ljava/lang/String;

    if-eqz v4, :cond_31

    const-string/jumbo v4, "intent_package"

    iget-object v5, p0, Lcom/miui/internal/search/TinyIntent;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_31

    :cond_88
    const-string/jumbo v4, "intent_extra"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8e
    iget-object v4, p0, Lcom/miui/internal/search/TinyIntent;->mData:Landroid/net/Uri;

    if-eqz v4, :cond_9e

    const-string/jumbo v4, "intent_data"

    iget-object v5, p0, Lcom/miui/internal/search/TinyIntent;->mData:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9e
    return-object v3
.end method
