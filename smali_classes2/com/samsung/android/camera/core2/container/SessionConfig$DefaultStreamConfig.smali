.class public Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;
.super Ljava/lang/Object;
.source "SessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/container/SessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultStreamConfig"
.end annotation


# instance fields
.field protected final a:Ljava/lang/Integer;

.field protected final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a:Ljava/lang/Integer;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a:Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string/jumbo p0, "streamOption: %d, physicalId: %s"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
