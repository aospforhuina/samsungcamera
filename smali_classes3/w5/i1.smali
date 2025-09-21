.class public final synthetic Lw5/i1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lw5/o2$b;


# static fields
.field public static final synthetic a:Lw5/i1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lw5/i1;

    invoke-direct {v0}, Lw5/i1;-><init>()V

    sput-object v0, Lw5/i1;->a:Lw5/i1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ly2/u;La3/c;)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lw5/o2;->e(Landroid/content/Context;Ly2/u;La3/c;)Z

    move-result p0

    return p0
.end method
