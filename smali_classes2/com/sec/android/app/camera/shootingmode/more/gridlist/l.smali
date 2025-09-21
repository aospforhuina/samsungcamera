.class public final synthetic Lcom/sec/android/app/camera/shootingmode/more/gridlist/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/shootingmode/more/gridlist/l;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/l;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/l;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/l;->a:Lcom/sec/android/app/camera/shootingmode/more/gridlist/l;

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

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListPresenter;->h(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
