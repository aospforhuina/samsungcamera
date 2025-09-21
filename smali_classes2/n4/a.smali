.class public Ln4/a;
.super Ljava/lang/Object;
.source "Boundary.java"


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:Ln4/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ln4/c;->b:Ln4/c;

    iput-object v0, p0, Ln4/a;->b:Ln4/c;

    return-void
.end method

.method static a()Ln4/a;
    .locals 1

    new-instance v0, Ln4/a;

    invoke-direct {v0}, Ln4/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Ln4/a;->a:Landroid/graphics/Rect;

    return-object p0
.end method

.method c(Landroid/graphics/Rect;)Ln4/a;
    .locals 0

    iput-object p1, p0, Ln4/a;->a:Landroid/graphics/Rect;

    return-object p0
.end method
