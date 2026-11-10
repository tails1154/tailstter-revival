.class final Lcom/twitter/android/an;
.super Lcom/twitter/android/client/m;


# instance fields
.field private synthetic a:Lcom/twitter/android/WelcomeActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/WelcomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/an;->a:Lcom/twitter/android/WelcomeActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/WelcomeActivity;Lcom/twitter/android/ce;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/an;-><init>(Lcom/twitter/android/WelcomeActivity;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/an;->a:Lcom/twitter/android/WelcomeActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/WelcomeActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/an;->a:Lcom/twitter/android/WelcomeActivity;

    iget v0, v0, Lcom/twitter/android/cj;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/WelcomeActivity;->d(I)V

    :cond_0
    return-void
.end method
