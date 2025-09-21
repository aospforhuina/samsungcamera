.class public final synthetic Lcom/sec/android/app/camera/util/y;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/util/y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/util/y;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/y;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/y;->a:Lcom/sec/android/app/camera/util/y;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->e(I)[Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    return-object p0
.end method
