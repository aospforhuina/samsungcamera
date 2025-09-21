.class Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;
.super La4/b;
.source "EngineColorfulness.java"


# static fields
.field private static final b:Ljava/lang/String; = "EngineColorfulness"


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, La4/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;->a:Z

    :try_start_0
    const-string v0, "rm_rapidmoments_jni_b"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabling Colorfulness as Exception Occurred: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private native getColorfulnessScore([BII)D
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;->b:Ljava/lang/String;

    const-string v1, "deinit E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, La4/b;->b()V

    .line 3
    iget-boolean p0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;->a:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "deinit X"

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    const-string p0, "ColorfulnessEngine"

    return-object p0
.end method

.method public d(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;->b:Ljava/lang/String;

    const-string v1, "init E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-super {p0, p1, p2}, La4/b;->d(Landroid/content/Context;Landroid/os/Bundle;)V

    const-string p0, "init X"

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e(Lz3/c;)Lz3/g;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;->b:Ljava/lang/String;

    const-string v1, "process E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v1, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;->a:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-virtual {p1}, Lz3/c;->a()[B

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "process: input byte array is null. Exiting"

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 5
    :cond_1
    invoke-virtual {p1}, Lz3/c;->h()I

    move-result v2

    .line 6
    invoke-virtual {p1}, Lz3/c;->e()I

    move-result p1

    .line 7
    invoke-direct {p0, v1, v2, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;->getColorfulnessScore([BII)D

    move-result-wide p0

    .line 8
    new-instance v1, Lz3/g;

    invoke-direct {v1}, Lz3/g;-><init>()V

    .line 9
    iput-wide p0, v1, Lz3/g;->b:D

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process X, score: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
