.class public final synthetic Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/g;

    invoke-direct {v0}, Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/g;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/g;->a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/ZoomCurveData;->f(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
