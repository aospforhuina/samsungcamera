.class public Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;
.super Ljava/lang/Object;
.source "NodeFeatureUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/NodeFeatureUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NodeFeatureInfo"
.end annotation


# instance fields
.field public final a:Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;

.field public final b:I

.field public final c:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;-><init>(Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;II)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;->a:Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;

    .line 4
    iput p2, p0, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;->b:I

    .line 5
    iput p3, p0, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;IILcom/samsung/android/camera/core2/node/e0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;-><init>(Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;II)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;Lcom/samsung/android/camera/core2/node/e0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;-><init>(Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;->a:Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;->b:I

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget p0, p0, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "NodeFeatureInfo{nodeFeatureVersion=%s, majorVersion=%d, minorVersion=%d}"

    .line 3
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
