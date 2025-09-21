.class public interface abstract Ld0/a$c;
.super Ljava/lang/Object;
.source "GlideExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# static fields
.field public static final a:Ld0/a$c;

.field public static final b:Ld0/a$c;

.field public static final c:Ld0/a$c;

.field public static final d:Ld0/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ld0/a$c$a;

    invoke-direct {v0}, Ld0/a$c$a;-><init>()V

    sput-object v0, Ld0/a$c;->a:Ld0/a$c;

    .line 2
    new-instance v0, Ld0/a$c$b;

    invoke-direct {v0}, Ld0/a$c$b;-><init>()V

    sput-object v0, Ld0/a$c;->b:Ld0/a$c;

    .line 3
    new-instance v1, Ld0/a$c$c;

    invoke-direct {v1}, Ld0/a$c$c;-><init>()V

    sput-object v1, Ld0/a$c;->c:Ld0/a$c;

    .line 4
    sput-object v0, Ld0/a$c;->d:Ld0/a$c;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Throwable;)V
.end method
