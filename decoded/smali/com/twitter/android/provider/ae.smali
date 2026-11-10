.class final Lcom/twitter/android/provider/ae;
.super Landroid/content/UriMatcher;


# direct methods
.method constructor <init>(I)V
    .locals 5

    const/16 v4, 0x259

    const/16 v3, 0x258

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/content/UriMatcher;-><init>(I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "users"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "users/id/#"

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "user_groups"

    const/16 v2, 0x3c

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "user_groups_view/#"

    const/16 v2, 0x46

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "user_groups_view/following/#"

    const/16 v2, 0x48

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "user_groups_view/followers/#"

    const/16 v2, 0x49

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "user_groups_view/blocked/#"

    const/16 v2, 0x4a

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "user_groups_view/members/#"

    const/16 v2, 0x4b

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "user_groups_view/subscribers/#"

    const/16 v2, 0x4c

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "user_groups_view/people/#"

    const/16 v2, 0x4d

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "user_groups_view/search"

    const/16 v2, 0x4e

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "user_groups_view/slug/#"

    const/16 v2, 0x4f

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "user_groups_view/contacts/#"

    const/16 v2, 0x50

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "statuses"

    const/16 v2, 0x14

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "statuses/id/#"

    const/16 v2, 0x15

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "status_groups"

    const/16 v2, 0x6e

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "status_groups/#"

    const/16 v2, 0x6f

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "status_groups_view"

    const/16 v2, 0x78

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "status_groups_view/#"

    const/16 v2, 0x79

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "status_groups_view/id/#"

    const/16 v2, 0x7a

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "status_groups_view/timeline/#"

    const/16 v2, 0x7b

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "status_groups_view/favorites/#"

    const/16 v2, 0x7c

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "status_groups_view/home"

    const/16 v2, 0x7d

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "status_groups_view/replies"

    const/16 v2, 0x7e

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "status_groups_view/mentions"

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "status_groups_view/retweetedbyme"

    const/16 v2, 0x81

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "status_groups_view/retweetedtome"

    const/16 v2, 0x82

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "status_groups_view/retweetsofme"

    const/16 v2, 0x83

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "status_groups_view/list/#"

    const/16 v2, 0x84

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "status_groups_view/drafts/#"

    const/16 v2, 0x85

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "status_groups_view/mentions_and_rts/#"

    const/16 v2, 0x86

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "messages"

    const/16 v2, 0xc9

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "messages/id/#"

    const/16 v2, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "messages_sent_view"

    const/16 v2, 0xd5

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "messages_received_view"

    const/16 v2, 0xd6

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "messages_threaded"

    const/16 v2, 0xd7

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "messages_conversation"

    const/16 v2, 0xd8

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "lists"

    const/16 v2, 0xdc

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "lists/id/#"

    const/16 v2, 0xdd

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "lists_view"

    const/16 v2, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "lists_view/#"

    const/16 v2, 0x12d

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "lists_view/id/#"

    const/16 v2, 0x12e

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "search_results"

    const/16 v2, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "search_results/#"

    const/16 v2, 0x1f5

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "search_queries"

    const/16 v2, 0x208

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "search_queries/#"

    const/16 v2, 0x209

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "search_suggest_query"

    invoke-virtual {p0, v0, v1, v3}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "search_suggest_query/*"

    invoke-virtual {p0, v0, v1, v3}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "search_suggest_shortcut"

    invoke-virtual {p0, v0, v1, v4}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    const-string v1, "search_suggest_shortcut/*"

    invoke-virtual {p0, v0, v1, v4}, Lcom/twitter/android/provider/ae;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
