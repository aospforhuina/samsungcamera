.class public final synthetic Lcom/sec/android/app/camera/setting/repository/xd;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/setting/repository/ValueGetter;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/setting/repository/xd;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/setting/repository/xd;

    invoke-direct {v0}, Lcom/sec/android/app/camera/setting/repository/xd;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/setting/repository/xd;->a:Lcom/sec/android/app/camera/setting/repository/xd;

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

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->J7()I

    move-result p0

    return p0
.end method
