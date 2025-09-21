.class Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;
.super La4/b;
.source "EngineAiDID.java"

# interfaces
.implements La4/a;


# static fields
.field private static final b:Ljava/lang/String; = "EngineAiDID"


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
    iput-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;->a:Z

    :try_start_0
    const-string v0, "rm_rapidmoments_jni_b"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabling AiDID as Exception Occurred: "

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

.method private native getFeaturesAndKeyPointsByteArray([BII)[Ljava/lang/Object;
.end method

.method private native isSimilar([B[B[D[DII)Z
.end method


# virtual methods
.method public a(Lz3/g;Lz3/g;)Z
    .locals 9

    .line 1
    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;->b:Ljava/lang/String;

    const-string v1, "isSimilar E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v3, p1, Lz3/g;->d:[B

    .line 3
    iget-object v4, p2, Lz3/g;->d:[B

    .line 4
    iget-object v5, p1, Lz3/g;->e:[D

    .line 5
    iget-object v6, p2, Lz3/g;->e:[D

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    .line 6
    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;->isSimilar([B[B[D[DII)Z

    move-result p0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isSimilar X: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;->b:Ljava/lang/String;

    return-object p0
.end method

.method public e(Lz3/c;)Lz3/g;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;->b:Ljava/lang/String;

    const-string v1, "process E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v1, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;->a:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-virtual {p1}, Lz3/c;->b()[B

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lz3/c;->h()I

    move-result v3

    invoke-virtual {p1}, Lz3/c;->e()I

    move-result p1

    invoke-direct {p0, v1, v3, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;->getFeaturesAndKeyPointsByteArray([BII)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    array-length p1, p0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    .line 6
    aget-object p1, p0, p1

    move-object v2, p1

    check-cast v2, [B

    const/4 p1, 0x1

    .line 7
    aget-object p0, p0, p1

    check-cast p0, [D

    goto :goto_0

    :cond_1
    const-string p0, "DID JNI did not provide descriptor and keypoints"

    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v2

    .line 9
    :goto_0
    new-instance p1, Lz3/g;

    invoke-direct {p1}, Lz3/g;-><init>()V

    .line 10
    iput-object v2, p1, Lz3/g;->d:[B

    .line 11
    iput-object p0, p1, Lz3/g;->e:[D

    const-string p0, "process X"

    .line 12
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method
