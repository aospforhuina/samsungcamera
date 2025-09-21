.class public abstract Lh0/m;
.super Ljava/lang/Object;
.source "DownsampleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh0/m$g;,
        Lh0/m$c;,
        Lh0/m$f;,
        Lh0/m$b;,
        Lh0/m$a;,
        Lh0/m$d;,
        Lh0/m$e;
    }
.end annotation


# static fields
.field public static final a:Lh0/m;

.field public static final b:Lh0/m;

.field public static final c:Lh0/m;

.field public static final d:Lh0/m;

.field public static final e:Lh0/m;

.field public static final f:Lh0/m;

.field public static final g:Lh0/m;

.field public static final h:Lx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx/h<",
            "Lh0/m;",
            ">;"
        }
    .end annotation
.end field

.field static final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lh0/m$a;

    invoke-direct {v0}, Lh0/m$a;-><init>()V

    sput-object v0, Lh0/m;->a:Lh0/m;

    .line 2
    new-instance v0, Lh0/m$b;

    invoke-direct {v0}, Lh0/m$b;-><init>()V

    sput-object v0, Lh0/m;->b:Lh0/m;

    .line 3
    new-instance v0, Lh0/m$e;

    invoke-direct {v0}, Lh0/m$e;-><init>()V

    sput-object v0, Lh0/m;->c:Lh0/m;

    .line 4
    new-instance v0, Lh0/m$c;

    invoke-direct {v0}, Lh0/m$c;-><init>()V

    sput-object v0, Lh0/m;->d:Lh0/m;

    .line 5
    new-instance v0, Lh0/m$d;

    invoke-direct {v0}, Lh0/m$d;-><init>()V

    sput-object v0, Lh0/m;->e:Lh0/m;

    .line 6
    new-instance v1, Lh0/m$f;

    invoke-direct {v1}, Lh0/m$f;-><init>()V

    sput-object v1, Lh0/m;->f:Lh0/m;

    .line 7
    sput-object v0, Lh0/m;->g:Lh0/m;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    .line 8
    invoke-static {v1, v0}, Lx/h;->f(Ljava/lang/String;Ljava/lang/Object;)Lx/h;

    move-result-object v0

    sput-object v0, Lh0/m;->h:Lx/h;

    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lh0/m;->i:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(IIII)Lh0/m$g;
.end method

.method public abstract b(IIII)F
.end method
