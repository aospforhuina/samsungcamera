.class public Lcom/samsung/android/camera/core2/node/NodeFeature;
.super Ljava/lang/Object;
.source "NodeFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;,
        Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureGroup;,
        Lcom/samsung/android/camera/core2/node/NodeFeature$Property;
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_AI_HIGH_RESOLUTION_MAX_CAPTURE"

    .line 1
    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/FloatingFeatureUtils;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/camera/core2/node/NodeFeature;->a:I

    const-string v0, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_HIGH_RESOLUTION_SWBINNING"

    .line 2
    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/FloatingFeatureUtils;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/camera/core2/node/NodeFeature;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
