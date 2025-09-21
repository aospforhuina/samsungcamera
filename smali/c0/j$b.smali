.class final Lc0/j$b;
.super Ljava/lang/Object;
.source "SafeKeyGenerator.java"

# interfaces
.implements Lv0/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/security/MessageDigest;

.field private final b:Lv0/c;


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lv0/c;->a()Lv0/c;

    move-result-object v0

    iput-object v0, p0, Lc0/j$b;->b:Lv0/c;

    .line 3
    iput-object p1, p0, Lc0/j$b;->a:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public b()Lv0/c;
    .locals 0

    iget-object p0, p0, Lc0/j$b;->b:Lv0/c;

    return-object p0
.end method
