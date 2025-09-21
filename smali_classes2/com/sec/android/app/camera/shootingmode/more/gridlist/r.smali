.class public final synthetic Lcom/sec/android/app/camera/shootingmode/more/gridlist/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/shootingmode/more/gridlist/r;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/r;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/r;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/r;->a:Lcom/sec/android/app/camera/shootingmode/more/gridlist/r;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;->l(Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;)V

    return-void
.end method
