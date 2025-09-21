.class public final synthetic Lw5/m0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lw5/m0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lw5/m0;

    invoke-direct {v0}, Lw5/m0;-><init>()V

    sput-object v0, Lw5/m0;->a:Lw5/m0;

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

    check-cast p1, Lw5/p2;

    invoke-static {p1}, Lw5/o0;->a(Lw5/p2;)Lw5/p2;

    move-result-object p0

    return-object p0
.end method
