import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:galapedia/presentation/bloc/news_bloc/news_bloc.dart';

class DiscoveryPage extends StatefulWidget {
  const DiscoveryPage({Key? key}) : super(key: key);
  static const routeName = '/discovery';

  @override
  State<DiscoveryPage> createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => context.read<NewsBloc>().add(const NewsEvent()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          BlocBuilder(builder: (context, state) {
            if (state is NewsInitial) {
              return const SizedBox(
                height: 240,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            } else if (state is NewsLoaded) {
              final result = state.news;
              return ListView.separated(
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(indent: 10),
                scrollDirection: Axis.horizontal,
                itemCount: result.length,
                itemBuilder: ((context, index) {
                  return Text(result[index].title.toString());
                }),
              );
            } else if (state is NewsError) {
              return Text(state.error);
            }

            return const Center(
              child: Text('Data Cannot Loaded!'),
            );
          })
        ]),
      ),
    );
  }
}
