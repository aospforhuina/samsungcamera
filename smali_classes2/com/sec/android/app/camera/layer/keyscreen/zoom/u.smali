.class public final synthetic Lcom/sec/android/app/camera/layer/keyscreen/zoom/u;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/u;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/u;

    invoke-direct {v0}, Lcom/sec/android/app/camera/layer/keyscreen/zoom/u;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/u;->a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/u;

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

    new-instance p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/ZoomCurveData;

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/ZoomCurveData;-><init>()V

    return-object p0
.end method
