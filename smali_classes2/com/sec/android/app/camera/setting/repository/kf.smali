.class public final synthetic Lcom/sec/android/app/camera/setting/repository/kf;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/setting/repository/ValueGetter;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/setting/repository/kf;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/setting/repository/kf;

    invoke-direct {v0}, Lcom/sec/android/app/camera/setting/repository/kf;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/setting/repository/kf;->a:Lcom/sec/android/app/camera/setting/repository/kf;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()I
    .locals 0

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->y8()I

    move-result p0

    return p0
.end method
