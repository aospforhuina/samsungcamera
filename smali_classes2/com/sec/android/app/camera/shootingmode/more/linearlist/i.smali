.class public final synthetic Lcom/sec/android/app/camera/shootingmode/more/linearlist/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/shootingmode/more/linearlist/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/more/linearlist/i;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/i;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/more/linearlist/i;->a:Lcom/sec/android/app/camera/shootingmode/more/linearlist/i;

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

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListPresenter;->f([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
