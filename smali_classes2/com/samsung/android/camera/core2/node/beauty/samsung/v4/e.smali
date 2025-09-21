.class public final synthetic Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/e;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/e;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/e;->a:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/e;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$14;->b()[Landroid/hardware/camera2/params/Face;

    move-result-object p0

    return-object p0
.end method
