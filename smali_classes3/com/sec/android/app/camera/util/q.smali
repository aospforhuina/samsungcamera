.class public final synthetic Lcom/sec/android/app/camera/util/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/util/q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/util/q;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/q;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/q;->a:Lcom/sec/android/app/camera/util/q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sec/android/app/camera/interfaces/Resolution;

    check-cast p2, Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/util/CameraResolution;->d(Lcom/sec/android/app/camera/interfaces/Resolution;Lcom/sec/android/app/camera/interfaces/Resolution;)I

    move-result p0

    return p0
.end method
