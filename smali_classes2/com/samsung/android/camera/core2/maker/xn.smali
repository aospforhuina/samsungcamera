.class public final synthetic Lcom/samsung/android/camera/core2/maker/xn;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/maker/xn;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/maker/xn;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/maker/xn;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/xn;->a:Lcom/samsung/android/camera/core2/maker/xn;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->p2(Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;)Z

    move-result p0

    return p0
.end method
